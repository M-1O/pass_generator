import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'color_schemes.dart';
part 'colors.dart';
part 'text_theme.dart';
part 'theme_provider.dart';

class CupertinoAppTheme {
  /// Due to Flutter limitations,
  /// 'textTheme' must be defined in every copyWith

  static const cupertinoTheme = CupertinoThemeData(
    brightness: Brightness.dark,
    primaryColor: green,
    primaryContrastingColor: yellow,
    // scaffoldBackgroundColor: CupertinoColors.white,
    scaffoldBackgroundColor: green,
    textTheme: cupertinoTextTheme,
    barBackgroundColor: darkGreen,
  );

  static final cupertinoDark = cupertinoTheme.copyWith(
    brightness: Brightness.dark,
  );

  static final cupertinoLight = cupertinoTheme.copyWith(
    brightness: Brightness.dark,
  );
}

class MaterialAppTheme {
  static final materialTheme = ThemeData(
    colorSchemeSeed: darkGreen,
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: textTheme,
  );

  static final materialLight = materialTheme.copyWith(
    brightness: Brightness.light,
    textTheme: textTheme,
  );

  static final materialDark = materialTheme.copyWith(
    brightness: Brightness.dark,
    textTheme: textTheme,
  );
}
