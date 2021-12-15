import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('ar'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'en':
        return '🇮🇳';
      case 'ar':
        return '🇦🇪';
      default:
        return '🇮🇳';
    }
  }
}
