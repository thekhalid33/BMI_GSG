import 'package:flutter/material.dart';

import 'package:toggle_switch/toggle_switch.dart';

class ToggleSwitchWidget extends StatelessWidget {
  Function toggle;
  int index;
  ToggleSwitchWidget({this.toggle, this.index});
  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      initialLabelIndex: index,
      onToggle: (index) => toggle(index),
      totalSwitches: 2,
      labels: ['Female', 'Male'],
      fontSize: 18,
      minWidth: 150,
      minHeight: 50,
      cornerRadius: 25,
      borderWidth: 1,
      borderColor: [Colors.grey.shade200, Colors.grey.shade200],
      activeBgColors: [
        [Colors.white],
        [Colors.white]
      ],
      activeFgColor: Colors.black,
      inactiveBgColor: Color.fromRGBO(248, 248, 248, 1),
      inactiveFgColor: Color.fromRGBO(169, 169, 169, 1),
      radiusStyle: true,
    );
  }
}
