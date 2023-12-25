import 'package:flutter/material.dart';
import 'package:rick_and_morty/di/app_locator.dart';
import 'package:rick_and_morty/presentation/application.dart';

void main() async {
  await configureDependencies();
  runApp(const Application());
}
