import 'dart:math';

import 'package:flutter/material.dart';

import 'AlertDialogFunction.dart';
import 'main.dart';

const margin = EdgeInsets.all(20);
const space = SizedBox(
  height: 10,
);

class GuessMe extends StatelessWidget {
  GuessMe({super.key, required this.switchPage});

  void Function(int userGuess, int randomNumber) switchPage;
  var userGuessController = TextEditingController();
  int? userGuess;

  int randomNumberGenerator() {
    int guessRandom = Random().nextInt(21);
    return guessRandom;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width > 450) {
      return SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(40),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                  child: Text(
                    "Enter a number in a range of 1 to 20",
                    style: TextStyle(
                      color: Color(0xffE2DAD6),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 400,
                      child: Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                            color: Color(0xffE2DAD6),
                          ),
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              color: kColorScheme.onPrimary,
                            ),
                            label: const Text(
                              'Enter number',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffE2DAD6),
                              ),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          controller: userGuessController,
                          maxLength: 2,
                          onSubmitted: (value) {
                            userGuess = int.tryParse(userGuessController.text);
                            if (userGuess == null) {
                              showAlertDialog(context);
                            } else {
                              if (userGuess! < 0 || userGuess! > 20) {
                                showAlertDialog(context);
                              }
                            }
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      onPressed: () {
                        userGuess = int.tryParse(userGuessController.text);
                        if (userGuess == null) {
                          showAlertDialog(context);
                        } else {
                          if (userGuess! < 0 || userGuess! > 20) {
                            showAlertDialog(context);
                          } else {
                            int randomNumber = randomNumberGenerator();
                            switchPage(userGuess!, randomNumber);
                          }
                        }
                      },
                      label: const Text(
                        'Guess',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      icon: const Icon(Icons.rocket_launch),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter a number in a range of 1 to 20",
                    style: TextStyle(
                      color: Color(0xffE2DAD6),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              space,
              TextField(
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: Color(0xffE2DAD6),
                ),
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: kColorScheme.onPrimary,
                  ),
                  label: const Text(
                    'Enter number',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffE2DAD6),
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                controller: userGuessController,
                maxLength: 2,
                onSubmitted: (value) {
                  userGuess = int.tryParse(userGuessController.text);
                  if (userGuess == null) {
                    showAlertDialog(context);
                  } else {
                    if (userGuess! < 0 || userGuess! > 20) {
                      showAlertDialog(context);
                    }
                  }
                },
              ),
              space, //defined globally
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                onPressed: () {
                  userGuess = int.tryParse(userGuessController.text);
                  if (userGuess == null) {
                    showAlertDialog(context);
                  } else {
                    if (userGuess! < 0 || userGuess! > 20) {
                      showAlertDialog(context);
                    } else {
                      int randomNumber = randomNumberGenerator();
                      switchPage(userGuess!, randomNumber);
                    }
                  }
                },
                label: const Text(
                  'Guess',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                icon: const Icon(Icons.rocket_launch),
              )
            ],
          ),
        ),
      );
    }
  }
}
