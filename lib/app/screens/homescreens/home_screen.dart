import 'package:flutter/material.dart';

import '../../calcul_controller.dart';
import 'widgets/my_button.dart';
import 'widgets/update_calcul_string_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String textCalcul = "";
  String textResultat = "";

  CalculController calculController = CalculController("");

  void keypress(value) {
    if (value != "C" && value != "=") {
      var calculActuel = calculController.add(value);
      textCalcul = calculActuel;
    } else if (value == "=") {
      var resultat = calculController.equals();
      print("Resultat homescreen = " + resultat);
      textResultat = resultat;
      calculController.reset();
      if (resultat != "Err.") {
        calculController.add(resultat);
      }
      setState(() {});
    } else if (value == "C") {
      calculController.reset();
      textCalcul = "";
      textResultat = "";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculatrice"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: const Icon(Icons.save),
              tooltip: 'Save',
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('Saved !')));
              },
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 30),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Card(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 10, right: 20, left: 20),
                          child: Text(
                            textCalcul,
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 40, bottom: 40, right: 20, left: 20),
                          child: Text(
                            textResultat,
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      MyButton(
                          value: "C",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.white,
                          borderColor: Colors.black,
                          textColor: Colors.black)
                    ],
                  ),
                  Column(
                    children: [
                      MyButton(
                          value: "(",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.white,
                          borderColor: Colors.black,
                          textColor: Colors.black)
                    ],
                  ),
                  Column(
                    children: [
                      MyButton(
                          value: ")",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.white,
                          borderColor: Colors.black,
                          textColor: Colors.black)
                    ],
                  ),
                  Column(
                    children: [
                      MyButton(
                          value: "/",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.white,
                          borderColor: Colors.black,
                          textColor: Colors.black)
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      MyButton(
                          value: "7",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.black,
                          borderColor: Colors.black,
                          textColor: Colors.white)
                    ],
                  ),
                  Column(
                    children: [
                      MyButton(
                          value: "8",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.black,
                          borderColor: Colors.black,
                          textColor: Colors.white)
                    ],
                  ),
                  Column(
                    children: [
                      MyButton(
                          value: "9",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.black,
                          borderColor: Colors.black,
                          textColor: Colors.white)
                    ],
                  ),
                  Column(
                    children: [
                      MyButton(
                          value: "x",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.white,
                          borderColor: Colors.black,
                          textColor: Colors.black)
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      MyButton(
                          value: "4",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.black,
                          borderColor: Colors.black,
                          textColor: Colors.white)
                    ],
                  ),
                  Column(
                    children: [
                      MyButton(
                          value: "5",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.black,
                          borderColor: Colors.black,
                          textColor: Colors.white)
                    ],
                  ),
                  Column(
                    children: [
                      MyButton(
                          value: "6",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.black,
                          borderColor: Colors.black,
                          textColor: Colors.white)
                    ],
                  ),
                  Column(
                    children: [
                      MyButton(
                          value: "-",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.white,
                          borderColor: Colors.black,
                          textColor: Colors.black)
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      MyButton(
                          value: "1",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.black,
                          borderColor: Colors.black,
                          textColor: Colors.white)
                    ],
                  ),
                  Column(
                    children: [
                      MyButton(
                          value: "2",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.black,
                          borderColor: Colors.black,
                          textColor: Colors.white)
                    ],
                  ),
                  Column(
                    children: [
                      MyButton(
                          value: "3",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.black,
                          borderColor: Colors.black,
                          textColor: Colors.white)
                    ],
                  ),
                  Column(
                    children: [
                      MyButton(
                          value: "+",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.white,
                          borderColor: Colors.black,
                          textColor: Colors.black)
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      MyButton(
                          value: "0",
                          keypressFunction: keypress,
                          calculController: calculController,
                          doubleSize: true,
                          buttonColor: Colors.black,
                          borderColor: Colors.black,
                          textColor: Colors.white)
                    ],
                  ),
                  Column(
                    children: [
                      MyButton(
                          value: ".",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.black,
                          borderColor: Colors.black,
                          textColor: Colors.white)
                    ],
                  ),
                  Column(
                    children: [
                      MyButton(
                          value: "=",
                          keypressFunction: keypress,
                          calculController: calculController,
                          buttonColor: Colors.green[900],
                          borderColor: Colors.green[900],
                          textColor: Colors.white)
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
