import 'package:flutter/material.dart';

class UpdateTextUpdateCalculText extends StatefulWidget {
  UpdateCalculTextState createState() => UpdateCalculTextState();
}

class UpdateCalculTextState extends State {
  String calculString = 'Calcul initial';

  changeText() {
    setState(() {
      calculString = 'New Sample Text...';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 10, right: 20, left: 20),
          child: Text(
            calculString,
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}
