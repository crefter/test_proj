import 'package:flutter/material.dart';

extension TextThemeExt on TextTheme {
  TextStyle get appBar => const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w500,
        height: 1.20,
      );

  TextStyle get header => const TextStyle(
        color: Colors.black,
        fontSize: 22,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w500,
        height: 1.20,
      );

  TextStyle get address => const TextStyle(
        color: Color(0xFF0D72FF),
        fontSize: 14,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w500,
        height: 1.20,
      );

  TextStyle get price => const TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w600,
        height: 1.20,
      );

  TextStyle get prompt => const TextStyle(
        color: Color(0xFF828796),
        fontSize: 16,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w400,
        height: 1.6,
      );

  TextStyle get regular => TextStyle(
        color: Colors.black.withOpacity(0.8999999761581421),
        fontSize: 16,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w400,
        height: 1.20,
      );

  TextStyle get facilities => const TextStyle(
        color: Color(0xFF2C3035),
        fontSize: 16,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w500,
        height: 1.20,
      );

  TextStyle get facilitiesDescription => const TextStyle(
        color: Color(0xFF828696),
        fontSize: 14,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w500,
        height: 1.20,
      );

  TextStyle get buttonText => const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w500,
        height: 1.10,
        letterSpacing: 0.10,
      );

  TextStyle get moreAboutTheRoom => const TextStyle(
        color: Color(0xFF0D72FF),
        fontSize: 16,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w500,
        height: 1.20,
      );

  TextStyle get rating => const TextStyle(
        color: Color(0xFFFFA800),
        fontSize: 16,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w500,
        height: 1.20,
      );

  TextStyle get bookingData => const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w400,
        height: 1.20,
      );

  TextStyle get bookingDescription => const TextStyle(
        color: Color(0xFF828796),
        fontSize: 16,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w400,
        height: 1.2,
      );

  TextStyle get labelTextField => const TextStyle(
        color: Color(0xFFA8ABB6),
        fontSize: 17,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w400,
        height: 1.20,
        letterSpacing: 0.17,
      );

  TextStyle get customerWarning => const TextStyle(
        color: Color(0xFF828796),
        fontSize: 14,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w400,
        height: 1.20,
      );

  TextStyle get textFieldText => const TextStyle(
        color: Color(0xFF14132A),
        fontSize: 16,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w400,
        height: 1.10,
        letterSpacing: 0.75,
      );

  TextStyle get totalPrice => const TextStyle(
        color: Color(0xFF0D72FF),
        fontSize: 16,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w600,
        height: 1.20,
      );
}
