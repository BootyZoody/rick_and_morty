part of 'package:rick_and_morty/theme/app_theme.dart';

class _AppThemeExtension extends ThemeExtension<_AppThemeExtension> {
  final _Colors colors;
  final _Spacings spacings;

  const _AppThemeExtension._({
    required this.colors,
    required this.spacings,
  });

  const _AppThemeExtension.lightThemeExtension()
      : colors = _colors,
        spacings = _spacings;

  @override
  ThemeExtension<_AppThemeExtension> copyWith({
    _Colors? colors,
    _Spacings? spacings,
  }) =>
      _AppThemeExtension._(
        colors: colors ?? this.colors,
        spacings: spacings ?? this.spacings,
      );

  @override
  ThemeExtension<_AppThemeExtension> lerp(
    covariant ThemeExtension<_AppThemeExtension>? other,
    double t,
  ) =>
      _AppThemeExtension._(colors: colors, spacings: spacings);
}
