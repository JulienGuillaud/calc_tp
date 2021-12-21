import 'package:flutter/material.dart';

import '../../../calcul_controller.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.value,
    required this.buttonColor,
    required this.textColor,
    required this.borderColor,
    required this.keypressFunction,
    required this.calculController,
    this.readonly = false,
    this.doubleSize = false,
  }) : super(key: key);

  final String value;
  final buttonColor;
  final textColor;
  final borderColor;
  final bool readonly;
  final bool doubleSize;
  final CalculController calculController;
  final Function keypressFunction;

  @override
  Widget build(BuildContext context) {
    var buttonSizeWidthParam = 90.0;
    var buttonSizeHeightParam = 90.0;
    if (doubleSize) {
      buttonSizeWidthParam *= 2;
    }

    return SizedBox(
      width: buttonSizeWidthParam,
      height: buttonSizeHeightParam,
      child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: buttonColor,
                onPrimary: textColor,
                textStyle: TextStyle(fontSize: 30),
                side: BorderSide(
                  width: 2.0,
                  color: borderColor,
                )),
            onPressed: () {
              keypressFunction(value);
            },
            child: Text(value),
          )),
    );
  }
}
