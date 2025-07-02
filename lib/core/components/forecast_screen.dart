import 'package:assignment_day9/features/home/views/mobile/forecast_screen_mobile.dart';
import 'package:flutter/material.dart';
import 'package:your_app/ui/screens/forecast_mobile.dart';
import 'package:your_app/ui/screens/forecast_tablet.dart';

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
