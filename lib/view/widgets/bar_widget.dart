import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BarWidget extends StatelessWidget {
  Function onChanging;
  double val;
  BarWidget({this.onChanging, this.val});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: <Widget>[
        SizedBox(
          width: 320,
          child: SliderTheme(
            data: SliderThemeData(
              trackHeight: 20,
              activeTrackColor: Color.fromRGBO(178, 69, 146, 1),
              inactiveTrackColor: Colors.white,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0),
              overlayColor: Color.fromRGBO(178, 69, 146, 0.3),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
            ),
            child: Slider(
              value: val,
              min: 0,
              max: 60,
              divisions: 60,
              onChanged: (v) => onChanging(v),
            ),
          ),
        ),

        // Container(
        //   width: double.infinity,
        //   margin: const EdgeInsets.symmetric(horizontal: 12),
        //   child: Stack(
        //     alignment: Alignment.centerLeft,
        //     children: <Widget>[
        //       marker(left: 10),
        //       marker(left: 15),
        //       marker(left: 20),
        //       marker(left: 25),
        //       marker(left: 30),
        //       marker(left: 35),
        //       marker(left: 40),
        //       marker(left: 45),
        //       marker(left: 50),
        //       marker(left: 55),
        //       marker(left: 60),
        //       marker(left: 60),
        //       marker(left: 60),
        //       marker(left: 60),
        //       marker(left: 60),
        //       marker(left: 60),
        //       marker(left: 60),
        //       marker(left: 60),
        //     ],
        //   ),
        // ),

        // Container(
        //   decoration: BoxDecoration(
        //     border: Border.all(color: Colors.grey, width: 1.0),
        //     color: Color.fromRGBO(220, 220, 220, 1),
        //     borderRadius: BorderRadius.circular(10),
        //   ),
        // ),
        // FractionallySizedBox(
        //   heightFactor: 0.5,
        //   widthFactor: age / 60,
        //   alignment: AlignmentDirectional.center,
        //   child: Container(
        //     child: Slider(
        //       min: 0,
        //       max: 60,
        //       divisions: 55,
        //       value: age,
        //       activeColor: Color.fromRGBO(178, 69, 146, 1),
        //       inactiveColor: Colors.white,
        //       onChanged: (v) => onChanging(v),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  Widget marker({
    @required double left,
  }) {
    return Container(
      height: 10,
      width: 2,
      margin: EdgeInsets.only(left: left),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(18),
      ),
    );
  }
}
