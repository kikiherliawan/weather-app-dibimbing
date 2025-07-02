import 'package:assignment_day9/features/home/views/mobile/forecast_screen_mobile.dart';
import 'package:assignment_day9/features/home/views/tablet/forecast_screen_tablet.dart';
import 'package:flutter/material.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      //
      return ForecastScreenMobile();
    } else {
      //
      return ForecastScreenTablet();
    }
  }
}
