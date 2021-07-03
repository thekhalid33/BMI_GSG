import 'package:flutter/material.dart';

class VerticalBarWidget extends StatelessWidget {
  Function onChanging;
  double value;
  double max;
  double min;
  VerticalBarWidget({this.onChanging, this.value, this.max, this.min});
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        trackHeight: 20,
        overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
      ),
      child: RotatedBox(
        quarterTurns: 3,
        child: SizedBox(
          width: 430,
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
              min: min,
              max: max,
              value: value,
              onChanged: (v) => onChanging(v),
            ),
          ),
        ),
      ),
    );
  }
}
