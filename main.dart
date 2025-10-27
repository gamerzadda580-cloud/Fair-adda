import 'package:flutter/material.dart';
import 'widgets/common_navbar.dart';
import 'screens/notifications.dart';
import 'screens/support.dart';
import 'screens/match_details.dart';

void main() => runApp(const GamerzAddaApp());

class GamerzAddaApp extends StatelessWidget {
  const GamerzAddaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gamerz Adda',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.redAccent,
        scaffoldBackgroundColor: const Color(0xFF0F0F0F),
        fontFamily: 'Poppins',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 2,
          centerTitle: true,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const CommonNavbar(),
      routes: {
        '/notifications': (context) => const NotificationsScreen(),
        '/support': (context) => const SupportScreen(),
        '/match-details': (context) => const MatchDetailsScreen(),
      },
    );
  }
}