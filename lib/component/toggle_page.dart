import 'package:flutter/material.dart';

import '../home_screen.dart';
import '../prompt_screen.dart';

class TogglePage extends StatefulWidget {
  const TogglePage({super.key});

  @override
  State<TogglePage> createState() => _TogglePageState();
}

class _TogglePageState extends State<TogglePage> {
  bool _showHomescreen = true; // This is the correct variable

  void _toggleScreen() {
    setState(() {
      _showHomescreen = !_showHomescreen; // Use the correct variable name
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_showHomescreen) {
      return HomeScreen(
        showPromptScreen: _toggleScreen,
      );
    } else {
      return PromptScreen(
        showHomeScreen: _toggleScreen,
      );
    }
  }
}
