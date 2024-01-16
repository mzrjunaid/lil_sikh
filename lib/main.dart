import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

// Screens
import 'Screens/splash_screen.dart';
import 'Screens/home_screen.dart';

// Color primaryColor = const Color(0xFF00A8EF);
Color primaryColor = const Color(0xFFFFFFFF);
Color accentColor = const Color(0xFF333333);
Color backgroundColor = const Color(0xFFFFFFFF);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code Info',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF00A8EF),
          actionsIconTheme: IconThemeData(
            color: Colors.white,
            size: 24,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 24,
          ),
          elevation: 15,
          shadowColor: Colors.black,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
            letterSpacing: 1,
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MaterialColor(primaryColor.value, {
            50: primaryColor.withOpacity(0.1),
            100: primaryColor.withOpacity(0.2),
            200: primaryColor.withOpacity(0.3),
            300: primaryColor.withOpacity(0.4),
            400: primaryColor.withOpacity(0.5),
            500: primaryColor,
            600: primaryColor.withOpacity(0.7),
            700: primaryColor.withOpacity(0.8),
            800: primaryColor.withOpacity(0.9),
            900: primaryColor.withOpacity(1.0),
          }),
          accentColor: accentColor,
          backgroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      // home: const AppData(),
      home: AnimatedSplashScreen(
        splashIconSize: double.infinity,
        duration: 1500,
        splash: const Splash(),
        nextScreen: const HomeScreen(
          title: "Lil' Sikhs Daily Prayer",
        ),
        splashTransition: SplashTransition.slideTransition,
        backgroundColor: primaryColor,
      ),
    );
  }
}
