import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: BColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: BColors.black),
    selectedColor: BColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: BColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: BColors.darkerGrey,
    labelStyle: TextStyle(color: BColors.white),
    selectedColor: BColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: BColors.white,
  );
}
