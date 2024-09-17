import 'package:flutter/material.dart';
import 'package:guess_me/color.dart';

void showAlertDialog(BuildContext context) => showDialog(
    context: context,
    builder: (ctx) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        backgroundColor: alertDialogBackgroundColor,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Ok',
              style: TextStyle(
                color: Color(0xff45474B),
              ),
            ),
          )
        ],
        title: const Text(
          "Enter a number between 0 to 20",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff45474B),
          ),
        ),
      );
    });
