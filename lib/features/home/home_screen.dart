import 'package:flutter/material.dart';
import 'views/mobile/mobile.dart';
import 'views/tablet/tablet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < 600) {
      return const MobileLayout();
    } else {
      return const TabletLayout();
    }
  }
}
