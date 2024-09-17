import 'package:flutter/material.dart';
import 'package:guess_me/guess_me.dart';
import 'package:guess_me/result_page.dart';

class CurrPage extends StatefulWidget {
  const CurrPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CurrPage();
  }
}

class _CurrPage extends State<CurrPage> {
  Widget? screenWidget;

  @override
  void initState() {
    screenWidget = GuessMe(switchPage: switchPage);
    super.initState();
  }

  void switchPage(int userGuess, int randomNumber) {
    setState(() {
      screenWidget = ResultPage(
          restart: restart, userGuess: userGuess, randomNumber: randomNumber);
    });
  }

  void restart() {
    setState(() {
      screenWidget = GuessMe(switchPage: switchPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return screenWidget!;
  }
}
