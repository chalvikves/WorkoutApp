import 'package:flutter/material.dart';

// Dark mode

ColorScheme colorSchemeDark = ColorScheme(
  primary: const Color(0xFFF57C00),
  primaryVariant: const Color(0xFFFF6D00),
  secondary: const Color(0xFF13B8EB),
  secondaryVariant: const Color(0xFF13B8EB),
  background: const Color(0xFF121212),
  surface: const Color(0xFF121212),
  error: const Color(0xFFCF6679),
  onPrimary: const Color(0xFF000000),
  onSecondary: const Color(0xFF000000),
  onBackground: const Color(0xFFFFFFFF),
  onSurface: const Color(0xFF8A8A8A),
  onError: const Color(0xFF000000),
  brightness: Brightness.dark,
);

ColorScheme colorSchemeDarkHigh = ColorScheme.highContrastDark();

// Light mode

ColorScheme colorSchemeLight = ColorScheme(
  primary: const Color(0xFFF57C00),
  primaryVariant: const Color(0xFFFF6D00),
  secondary: const Color(0xFF13B8EB),
  secondaryVariant: const Color(0xFF067A9E),
  background: const Color(0xFFFFFFFF),
  surface: const Color(0xFFFFFFFF),
  error: const Color(0xFFB00020),
  onPrimary: const Color(0xFFFFFFFF),
  onSecondary: const Color(0xFF000000),
  onBackground: const Color(0xFF000000),
  onSurface: const Color(0xFF8A8A8A),
  onError: const Color(0xFFFFFFFF),
  brightness: Brightness.light,
);

ColorScheme colorSchemeLightHigh = ColorScheme.highContrastLight();

Color black = const Color(0xFF222222);
Color blue = const Color(0xFF2f89fc);
Color green = const Color(0xFF30e3ca);
Color white = const Color(0xFFf5f5f5);
