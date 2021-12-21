import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculController {
  CalculController(this.calculString);

  String calculString;

  String add(value) {
    calculString += value;
    print("Calcul = " + calculString);
    return calculString;
  }

  void reset() {
    print("Reset");
    calculString = "";
  }

  String equals() {
    String stringPourCalcul =
        calculString.replaceAll("x", "*").replaceAll(" ", "");
    String stringRes = "";
    try {
      final res = 1 * stringPourCalcul.interpret();
      stringRes = res.toString();
      print("resultat = " + stringRes);
    } catch (e) {
      reset();
      stringRes = "Err.";
    }
    return stringRes;
  }
}
