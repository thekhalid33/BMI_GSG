import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import './result_screen.dart';

import '../widgets/pop_button_widget.dart';
import '../widgets/button_navigator_widget.dart';
import '../widgets/vertical_bar_widget.dart';

class DetailScreen extends StatefulWidget {
  static final String routeName = '/detail';

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  double weight = 50;
  changingWeight(weight) {
    this.weight = weight;
    setState(() {});
  }

  double height = 150;
  changingHeight(height) {
    this.height = height;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context).settings.arguments as int;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: PopButtonWidget(),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'ur_w_h'.tr(),
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              VerticalBarWidget(
                                value: weight,
                                onChanging: changingWeight,
                                max: 150,
                                min: 30,
                              ),
                              Image.asset(
                                'assets/images/weight_bar.png',
                                width: 30,
                                height: 370,
                              ),
                            ],
                          ),
                          Text(
                            '${weight.round()}',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Text(
                        'weight'.tr(),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  index == 0
                      ? 'assets/images/female_active_alone.png'
                      : 'assets/images/male_active_alone.png',
                  height: 400,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              VerticalBarWidget(
                                value: height,
                                onChanging: changingHeight,
                                max: 220,
                                min: 70,
                              ),
                              Image.asset(
                                'assets/images/height_bar.png',
                                width: 30,
                                height: 370,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        'height'.tr(),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ButtonNavigatorWidget(
              routeName: ResultScreen.routeName,
              arguments: [index, weight, height],
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
