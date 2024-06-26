import 'package:dark_white_theme_flutter/page1.dart';
import 'package:dark_white_theme_flutter/provider/mode_provider.dart';
import 'package:dark_white_theme_flutter/theme_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      //
      ChangeNotifierProvider(
          create: (context) => ModeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //
      theme: Provider.of<ModeProvider>(context).lightModeEnable
          ? ModeTheme.lightMode
          : ModeTheme.darkMode,

      //
      home: page1(),
    );
  }
}
