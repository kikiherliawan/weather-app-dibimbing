import 'package:assignment_day9/features/home/home_screen.dart';
import 'package:assignment_day9/features/home/views/mobile/detail_screen.dart';
import 'package:assignment_day9/features/home/views/mobile/forecast_screen_mobile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "/forecast": (context) => ForecastScreenMobile(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == "/detail") {
          final args = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (context) => DetailScreenWeatcher(
              namaKota: args["namaKota"],
              suhu: args["suhu"],
              icon: args["icon"],
            ),
          );
        }
        return null;
      },
    );
  }
}
