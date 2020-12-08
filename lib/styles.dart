import 'package:flutter/material.dart';

/// Palette
const cyanDark = Color(0xFF0e3e4f);
const cyan = Color(0xFF028090);
const cyanLight = Color(0xFF0ccfb7);
const pink = Color(0xFFF45B69);

const red = Colors.red;
const redLight = Color(0xFFEF5350);
const yellow = Color(0xFFf2b022);
const yellowLight = Color(0xFFf5c152);
const green = Color(0xFF359935);
const greenLight = Color(0xFF3caf3c);

const white = Colors.white;
const silver = Color(0xFFF5F5F5);
const greyLight = Color(0xFFe1e6e8);
const grey = Color(0xFF898c8c);
const charcoalLight = Color(0xFF4a4a4a);
const charcoal = Color(0xFF292929);
const charcoalDark = Color(0xFF1A1A1A);
const black = Colors.black;
const semiTransparent = Colors.black87;
const transparent = Color(0x00ffffff);
const boxShadow = Color(0x0d000000);
const overlay = Color.fromRGBO(0, 0, 0, 80);

/// Gradient Colors
const grad_1 = Color(0xFF0ccfb7);
const grad_2 = Color(0xFF0882a1);
const cyan_gradient = LinearGradient(
  colors: [grad_1, grad_2],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: [0.0, 1.0],
  tileMode: TileMode.clamp,
);

/*
<< OLD >>  SIZE   WEIGHT    << NEW >>
display4   112.0  thin      headline1
display3   56.0   normal    headline2
display2   45.0   normal    headline3
display1   34.0   normal    headline4
headline   24.0   normal    headline5
title      20.0   medium    headline6
subhead    16.0   normal    subtitle1
subtitle   14.0   medium    subtitle2
body2      14.0   medium    bodyText1
body1      14.0   normal    bodyText2
caption    12.0   normal    caption
button     14.0   medium    button
overline   10.0   normal    overline
*/

/// Themes
final kLightTheme = _buildLightTheme();
final kDarkTheme = _buildDarkTheme();

///=======================================
///              LIGHT THEME
///=======================================

ThemeData _buildLightTheme() {
  final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xff6200ee),
    primaryColorLight: white,
    primaryColorDark: cyanDark,
    accentColor: pink,
    backgroundColor: white,
    cardColor: white,
    scaffoldBackgroundColor: white,
    fontFamily: 'Quicksand',
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme(
      primary: const Color(0xff6200ee),
      primaryVariant: const Color(0xff3700b3),
      secondary: const Color(0xff03dac6),
      secondaryVariant: const Color(0xff018786),
      surface: Colors.white,
      background: Colors.white,
      error: const Color(0xffb00020),
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ButtonStyle(
    //     backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
    //     foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    //     overlayColor: MaterialStateProperty.resolveWith<Color>(
    //         (Set<MaterialState> states) {
    //       if (states.contains(MaterialState.focused))
    //         return Colors.red.shade600;
    //       if (states.contains(MaterialState.hovered)) return Colors.green;
    //       if (states.contains(MaterialState.pressed)) return Colors.blue;
    //       return null;
    //     }),
    //   ),
    // ),
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(color: Colors.grey.shade800),
      verticalOffset: 35.0,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: charcoalLight,
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      headline2: TextStyle(
        color: charcoalLight,
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      headline3: TextStyle(
        color: charcoalLight,
        fontSize: 48,
        fontWeight: FontWeight.w400,
      ),
      headline4: TextStyle(
        color: charcoalLight,
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headline5: TextStyle(
        color: charcoalLight,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      headline6: TextStyle(
        color: charcoalLight,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
      subtitle1: TextStyle(
        color: charcoalLight,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      ),
      subtitle2: TextStyle(
        color: charcoalLight,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      bodyText1: TextStyle(
        color: charcoalLight,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      bodyText2: TextStyle(
        color: charcoalLight,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      button: TextStyle(
        color: charcoalLight,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      caption: TextStyle(
        color: charcoalLight,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      overline: TextStyle(
        color: charcoalLight,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      ),
    ),
    primaryTextTheme: TextTheme(
      headline1: TextStyle(
        color: cyan,
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      headline2: TextStyle(
        color: cyan,
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      headline3: TextStyle(
        color: cyan,
        fontSize: 48,
        fontWeight: FontWeight.w400,
      ),
      headline4: TextStyle(
        color: cyan,
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headline5: TextStyle(
        color: cyan,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      headline6: TextStyle(
        color: cyan,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
      subtitle1: TextStyle(
        color: cyan,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      ),
      subtitle2: TextStyle(
        color: cyan,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      bodyText1: TextStyle(
        color: cyan,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      bodyText2: TextStyle(
        color: cyan,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      button: TextStyle(
        color: cyan,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      caption: TextStyle(
        color: cyan,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      overline: TextStyle(
        color: cyan,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      ),
    ),
    accentTextTheme: TextTheme(
      headline1: TextStyle(
        color: pink,
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      headline2: TextStyle(
        color: pink,
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      headline3: TextStyle(
        color: pink,
        fontSize: 48,
        fontWeight: FontWeight.w400,
      ),
      headline4: TextStyle(
        color: pink,
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headline5: TextStyle(
        color: pink,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      headline6: TextStyle(
        color: pink,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
      subtitle1: TextStyle(
        color: pink,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      ),
      subtitle2: TextStyle(
        color: pink,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      bodyText1: TextStyle(
        color: pink,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      bodyText2: TextStyle(
        color: pink,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      button: TextStyle(
        color: pink,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      caption: TextStyle(
        color: pink,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      overline: TextStyle(
        color: pink,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      ),
    ),
  );

  return lightTheme;
}

///=======================================
///              DARK THEME
///=======================================

ThemeData _buildDarkTheme() {
  final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: cyanLight,
    primaryColorLight: cyanLight,
    primaryColorDark: cyan,
    accentColor: pink,
    backgroundColor: charcoalDark,
    cardColor: Colors.grey,
    scaffoldBackgroundColor: charcoalDark,
    canvasColor: charcoalDark,
    fontFamily: 'Quicksand',
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme(
      primary: const Color(0xffbb86fc),
      primaryVariant: const Color(0xff3700B3),
      secondary: const Color(0xff03dac6),
      secondaryVariant: const Color(0xff03dac6),
      surface: const Color(0xff121212),
      background: const Color(0xff121212),
      error: const Color(0xffcf6679),
      onPrimary: Colors.black,
      onSecondary: Colors.black,
      onSurface: Colors.white,
      onBackground: Colors.white,
      onError: Colors.black,
      brightness: Brightness.dark,
    ),
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(color: Colors.grey.shade600),
      verticalOffset: 35.0,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: white,
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      headline2: TextStyle(
        color: white,
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      headline3: TextStyle(
        color: white,
        fontSize: 48,
        fontWeight: FontWeight.w400,
      ),
      headline4: TextStyle(
        color: white,
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headline5: TextStyle(
        color: white,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      headline6: TextStyle(
        color: white,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
      subtitle1: TextStyle(
        color: white,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      ),
      subtitle2: TextStyle(
        color: white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      bodyText1: TextStyle(
        color: white,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      bodyText2: TextStyle(
        color: white,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      button: TextStyle(
        color: white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      caption: TextStyle(
        color: white,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      overline: TextStyle(
        color: white,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      ),
    ),
    primaryTextTheme: TextTheme(
      headline1: TextStyle(
        color: cyanLight,
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      headline2: TextStyle(
        color: cyanLight,
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      headline3: TextStyle(
        color: cyanLight,
        fontSize: 48,
        fontWeight: FontWeight.w400,
      ),
      headline4: TextStyle(
        color: cyanLight,
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headline5: TextStyle(
        color: cyanLight,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      headline6: TextStyle(
        color: cyanLight,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
      subtitle1: TextStyle(
        color: cyanLight,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      ),
      subtitle2: TextStyle(
        color: cyanLight,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      bodyText1: TextStyle(
        color: cyanLight,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      bodyText2: TextStyle(
        color: cyanLight,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      button: TextStyle(
        color: cyanLight,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      caption: TextStyle(
        color: cyanLight,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      overline: TextStyle(
        color: cyanLight,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      ),
    ),
    accentTextTheme: TextTheme(
      headline1: TextStyle(
        color: pink,
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      headline2: TextStyle(
        color: pink,
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      headline3: TextStyle(
        color: pink,
        fontSize: 48,
        fontWeight: FontWeight.w400,
      ),
      headline4: TextStyle(
        color: pink,
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headline5: TextStyle(
        color: pink,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      headline6: TextStyle(
        color: pink,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
      subtitle1: TextStyle(
        color: pink,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      ),
      subtitle2: TextStyle(
        color: pink,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      bodyText1: TextStyle(
        color: pink,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      bodyText2: TextStyle(
        color: pink,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      button: TextStyle(
        color: pink,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      caption: TextStyle(
        color: pink,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      overline: TextStyle(
        color: pink,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      ),
    ),
  );

  return darkTheme;
}
