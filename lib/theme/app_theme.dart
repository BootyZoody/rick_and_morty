import 'package:flutter/material.dart';

part 'package:rick_and_morty/theme/colors.dart';
part 'package:rick_and_morty/theme/spacings.dart';
part 'package:rick_and_morty/theme/theme_extension/app_theme_extension.dart';

const _colors = _Colors();
const _spacings = _Spacings();

abstract class AppTheme {
  static ThemeData get lightThemeData => _lightThemeData;

  // ignore: library_private_types_in_public_api
  static _AppThemeExtension themeExtension(BuildContext context) =>
      Theme.of(context).extension<_AppThemeExtension>() as _AppThemeExtension;
}

final _lightThemeData = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
  extensions: const [
    _AppThemeExtension.lightThemeExtension(),
  ],
);
