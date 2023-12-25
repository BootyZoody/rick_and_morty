import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/characters/characters_page.dart';
import 'package:rick_and_morty/theme/app_theme.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightThemeData,
      home: const CharactersPage(),
    );
  }
}
