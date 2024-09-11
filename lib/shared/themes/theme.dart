import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4281363010),
      surfaceTint: Color(4281363010),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289982911),
      onPrimaryContainer: Color(4278198541),
      secondary: Color(4283652754),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4292862207),
      onSecondaryContainer: Color(4279113035),
      tertiary: Color(4283128978),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4292600319),
      onTertiaryContainer: Color(4278261579),
      error: Color(4287646274),
      onError: Color(4294967295),
      errorContainer: Color(4294957781),
      onErrorContainer: Color(4282059014),
      surface: Color(4294769389),
      onSurface: Color(4279966740),
      onSurfaceVariant: Color(4282992442),
      outline: Color(4286216040),
      outlineVariant: Color(4291479477),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281348392),
      inversePrimary: Color(4288206244),
      primaryFixed: Color(4289982911),
      onPrimaryFixed: Color(4278198541),
      primaryFixedDim: Color(4288206244),
      onPrimaryFixedVariant: Color(4279587116),
      secondaryFixed: Color(4292862207),
      onSecondaryFixed: Color(4279113035),
      secondaryFixedDim: Color(4290560767),
      onSecondaryFixedVariant: Color(4282139257),
      tertiaryFixed: Color(4292600319),
      onTertiaryFixed: Color(4278261579),
      tertiaryFixedDim: Color(4290037247),
      onTertiaryFixedVariant: Color(4281549944),
      surfaceDim: Color(4292664014),
      surfaceBright: Color(4294769389),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374631),
      surfaceContainer: Color(4293979873),
      surfaceContainerHigh: Color(4293585372),
      surfaceContainerHighest: Color(4293256150),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4279258409),
      surfaceTint: Color(4281363010),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4282876247),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281876084),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285165738),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281286772),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284641962),
      onTertiaryContainer: Color(4294967295),
      error: Color(4285411369),
      onError: Color(4294967295),
      errorContainer: Color(4289355862),
      onErrorContainer: Color(4294967295),
      surface: Color(4294769389),
      onSurface: Color(4279966740),
      onSurfaceVariant: Color(4282729270),
      outline: Color(4284571473),
      outlineVariant: Color(4286413676),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281348392),
      inversePrimary: Color(4288206244),
      primaryFixed: Color(4282876247),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281231168),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285165738),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283521167),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284641962),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282997391),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292664014),
      surfaceBright: Color(4294769389),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374631),
      surfaceContainer: Color(4293979873),
      surfaceContainerHigh: Color(4293585372),
      surfaceContainerHighest: Color(4293256150),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278200593),
      surfaceTint: Color(4281363010),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4279258409),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4279573586),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281876084),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278787666),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4281286772),
      onTertiaryContainer: Color(4294967295),
      error: Color(4282650635),
      onError: Color(4294967295),
      errorContainer: Color(4285411369),
      onErrorContainer: Color(4294967295),
      surface: Color(4294769389),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280624153),
      outline: Color(4282729270),
      outlineVariant: Color(4282729270),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281348392),
      inversePrimary: Color(4290575304),
      primaryFixed: Color(4279258409),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278203672),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281876084),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4280362845),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4281286772),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4279707997),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292664014),
      surfaceBright: Color(4294769389),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374631),
      surfaceContainer: Color(4293979873),
      surfaceContainerHigh: Color(4293585372),
      surfaceContainerHighest: Color(4293256150),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4288206244),
      surfaceTint: Color(4288206244),
      onPrimary: Color(4278204698),
      primaryContainer: Color(4279587116),
      onPrimaryContainer: Color(4289982911),
      secondary: Color(4290560767),
      onSecondary: Color(4280626017),
      secondaryContainer: Color(4282139257),
      onSecondaryContainer: Color(4292862207),
      tertiary: Color(4290037247),
      onTertiary: Color(4279971169),
      tertiaryContainer: Color(4281549944),
      onTertiaryContainer: Color(4292600319),
      error: Color(4294948010),
      onError: Color(4283833880),
      errorContainer: Color(4285740076),
      onErrorContainer: Color(4294957781),
      surface: Color(4279440397),
      onSurface: Color(4293256150),
      onSurfaceVariant: Color(4291479477),
      outline: Color(4287926657),
      outlineVariant: Color(4282992442),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293256150),
      inversePrimary: Color(4281363010),
      primaryFixed: Color(4289982911),
      onPrimaryFixed: Color(4278198541),
      primaryFixedDim: Color(4288206244),
      onPrimaryFixedVariant: Color(4279587116),
      secondaryFixed: Color(4292862207),
      onSecondaryFixed: Color(4279113035),
      secondaryFixedDim: Color(4290560767),
      onSecondaryFixedVariant: Color(4282139257),
      tertiaryFixed: Color(4292600319),
      onTertiaryFixed: Color(4278261579),
      tertiaryFixedDim: Color(4290037247),
      onTertiaryFixedVariant: Color(4281549944),
      surfaceDim: Color(4279440397),
      surfaceBright: Color(4281940529),
      surfaceContainerLowest: Color(4279111432),
      surfaceContainerLow: Color(4279966740),
      surfaceContainer: Color(4280295448),
      surfaceContainerHigh: Color(4280953634),
      surfaceContainerHighest: Color(4281677101),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4288469416),
      surfaceTint: Color(4288206244),
      onPrimary: Color(4278197001),
      primaryContainer: Color(4284718449),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4290955263),
      onSecondary: Color(4278652486),
      secondaryContainer: Color(4287007944),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4290431487),
      onTertiary: Color(4278194752),
      tertiaryContainer: Color(4286484424),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281533443),
      errorContainer: Color(4291591025),
      onErrorContainer: Color(4278190080),
      surface: Color(4279440397),
      onSurface: Color(4294835182),
      onSurfaceVariant: Color(4291808186),
      outline: Color(4289110931),
      outlineVariant: Color(4287005556),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293256150),
      inversePrimary: Color(4279718445),
      primaryFixed: Color(4289982911),
      onPrimaryFixed: Color(4278195462),
      primaryFixedDim: Color(4288206244),
      onPrimaryFixedVariant: Color(4278206238),
      secondaryFixed: Color(4292862207),
      onSecondaryFixed: Color(4278323265),
      secondaryFixedDim: Color(4290560767),
      onSecondaryFixedVariant: Color(4281020775),
      tertiaryFixed: Color(4292600319),
      onTertiaryFixed: Color(4278193717),
      tertiaryFixedDim: Color(4290037247),
      onTertiaryFixedVariant: Color(4280365927),
      surfaceDim: Color(4279440397),
      surfaceBright: Color(4281940529),
      surfaceContainerLowest: Color(4279111432),
      surfaceContainerLow: Color(4279966740),
      surfaceContainer: Color(4280295448),
      surfaceContainerHigh: Color(4280953634),
      surfaceContainerHighest: Color(4281677101),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4293918702),
      surfaceTint: Color(4288206244),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4288469416),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294834687),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4290955263),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294769407),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4290431487),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965752),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279440397),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294966253),
      outline: Color(4291808186),
      outlineVariant: Color(4291808186),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293256150),
      inversePrimary: Color(4278202902),
      primaryFixed: Color(4290246339),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4288469416),
      onPrimaryFixedVariant: Color(4278197001),
      secondaryFixed: Color(4293191167),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4290955263),
      onSecondaryFixedVariant: Color(4278652486),
      tertiaryFixed: Color(4292994815),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4290431487),
      onTertiaryFixedVariant: Color(4278194752),
      surfaceDim: Color(4279440397),
      surfaceBright: Color(4281940529),
      surfaceContainerLowest: Color(4279111432),
      surfaceContainerLow: Color(4279966740),
      surfaceContainer: Color(4280295448),
      surfaceContainerHigh: Color(4280953634),
      surfaceContainerHighest: Color(4281677101),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
