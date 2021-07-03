import 'package:flutter/material.dart';

import '../widgets/pop_button_widget.dart';

class ResultScreen extends StatelessWidget {
  static final String routeName = '/result';
  @override
  Widget build(BuildContext context) {
    List args = ModalRoute.of(context).settings.arguments as List<dynamic>;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: PopButtonWidget(),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: Text(
              'Your BMI result',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              Image.asset(
                args[0] == 0
                    ? 'assets/images/result_female.png'
                    : 'assets/images/result_male.png',
                height: 400,
              ),
              Positioned(
                bottom: -10,
                child: Card(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 30,
                    ),
                    child: Text(
                      '${args[2][0]}',
                      style: TextStyle(
                        color: args[2][1],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            'Your BMI is ${args[1]}',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
