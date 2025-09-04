import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class TElevatedButtonTheme {
  TElevatedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: BColors.light,
      backgroundColor: BColors.primary,
      disabledForegroundColor: BColors.darkGrey,
      disabledBackgroundColor: BColors.buttonDisabled,
      side: const BorderSide(color: BColors.primary),
      padding: const EdgeInsets.symmetric(vertical: BSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: BColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(BSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: BColors.light,
      backgroundColor: BColors.primary,
      disabledForegroundColor: BColors.darkGrey,
      disabledBackgroundColor: BColors.darkerGrey,
      side: const BorderSide(color: BColors.primary),
      padding: const EdgeInsets.symmetric(vertical: BSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: BColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(BSizes.buttonRadius)),
    ),
  );
}
