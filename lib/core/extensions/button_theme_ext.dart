import 'package:flutter/material.dart';

extension ButtonThemeExt on ButtonThemeData {
  ButtonStyle get button => ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(
          Color(0xFF0D72FF),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
        ),
      );

  ButtonStyle get moreButton => ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(
          Color(0x190D72FF),
        ),
        elevation: MaterialStatePropertyAll(0),
        padding: MaterialStatePropertyAll(
          EdgeInsets.only(
            left: 10,
            right: 2,
          ),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              5,
            ),
          ),
        ),
      );

  ButtonStyle get addNewUserButton => ButtonStyle(
    backgroundColor: const MaterialStatePropertyAll(Color(0xFF0D72FF)),
    elevation: const MaterialStatePropertyAll(0),
    padding: const MaterialStatePropertyAll(
      EdgeInsets.all(0),
    ),
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          6,
        ),
      ),
    ),
  );
}
