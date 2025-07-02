import 'package:assignment_day9/core/components/forecast_card_tablet.dart';
import 'package:assignment_day9/features/home/views/mobile/forecast_card_mobile.dart';
import 'package:flutter/material.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      // 👈 Ini buat HP
      return ForecastMobile();
    } else {
      // 👈 Ini buat tablet
      return ForecastTablet();
    }
  }
}
