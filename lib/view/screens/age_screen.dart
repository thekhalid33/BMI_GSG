import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import './detail_screen.dart';

import '../widgets/bar_widget.dart';
import '../widgets/button_navigator_widget.dart';
import '../widgets/pop_button_widget.dart';

class AgeScreen extends StatefulWidget {
  static final String routeName = '/age';

  @override
  _AgeScreenState createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  double age = 50;
  changingAge(age) {
    this.age = age;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context).settings.arguments as int;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'your_age'.tr(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 2,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: PopButtonWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Image.asset(
              index == 0
                  ? 'assets/images/female_active_alone.png'
                  : 'assets/images/male_active_alone.png',
              height: 400,
            ),
            Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    BarWidget(onChanging: changingAge, val: age),
                    Image.asset(
                      'assets/images/age_bar.png',
                      width: 260,
                      height: 30,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${age.round()} ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'year'.tr(),
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ButtonNavigatorWidget(
              routeName: DetailScreen.routeName,
              arguments: index,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
