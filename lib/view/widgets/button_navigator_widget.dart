import 'package:first_project_gsg/view/screens/result_screen.dart';
import 'package:flutter/material.dart';

import '../../calculatorBrain.dart';

class ButtonNavigatorWidget extends StatelessWidget {
  final String routeName;
  final dynamic arguments;
  final Function fun;
  ButtonNavigatorWidget({this.routeName, this.arguments, this.fun});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromRGBO(241, 95, 121, 1),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          Icons.arrow_forward_outlined,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {
          if (routeName == ResultScreen.routeName) {
            CalculatorBrain calc = CalculatorBrain(
                weight: arguments[1].round(), height: arguments[2].round());
            List args = [arguments[0], calc.calculateBMI(), calc.getResult()];
            Navigator.of(context).pushNamed(routeName, arguments: args);
          } else {
            Navigator.of(context).pushNamed(routeName, arguments: arguments);
          }
        },
      ),
    );
  }
}
