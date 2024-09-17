import 'package:flutter/material.dart';
import 'package:guess_me/guess_me.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {super.key,
      required this.restart,
      required this.userGuess,
      required this.randomNumber});

  int userGuess, randomNumber;
  void Function() restart;
  String wonMessage = 'Hurrah ! You\'ve Won';
  String failedMessage = 'Alas! You\'ve failed';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            userGuess == randomNumber ? wonMessage : failedMessage,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 30,
                  color: const Color(0xffE2DAD6),
                ),
          ),
          space,
          Text(
            'Your Guess : $userGuess',
            style: TextStyle(
              fontSize: 16,
              color: userGuess == randomNumber
                  ? const Color(0xff0A6847)
                  : const Color(0xffC7253E),
            ),
          ),
          space,
          Text(
            'Generated Number : $randomNumber',
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xff0A6847),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: restart,
            label: const Text('Guess Again'),
            icon: const Icon(Icons.restart_alt_sharp),
          )
        ],
      ),
    );
  }
}
