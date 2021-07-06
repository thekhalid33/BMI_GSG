import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import './age_screen.dart';

import '../widgets/toggle_switch_widget.dart';
import '../widgets/button_navigator_widget.dart';

class ChooseScreen extends StatefulWidget {
  static final String routeName = '/';

  @override
  _ChooseScreenState createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  int index = 0;

  void toggleSwitch(int index) {
    this.index = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'choose'.tr(),
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.language,
                  color: Colors.black,
                  size: 35,
                ),
                onPressed: () {
                  Locale locale = EasyLocalization.of(context).currentLocale;
                  EasyLocalization.of(context).setLocale(
                      locale == Locale('ar') ? Locale('en') : Locale('ar'));
                }),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  index == 0
                      ? 'assets/images/female_active.png'
                      : 'assets/images/female_inactive.png',
                  height: 300,
                  width: 190,
                ),
                Image.asset(
                  index == 1
                      ? 'assets/images/male_active.png'
                      : 'assets/images/male_inactive.png',
                  height: 300,
                  width: 190,
                ),
              ],
            ),
            ToggleSwitchWidget(
              toggle: toggleSwitch,
              index: index,
            ),
            ButtonNavigatorWidget(
              routeName: AgeScreen.routeName,
              arguments: index,
            ),
          ],
        ),
      ),
    );
  }
}
