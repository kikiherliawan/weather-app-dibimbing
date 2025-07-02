import 'package:assignment_day9/core/components/drawer.dart';
import 'package:assignment_day9/features/home/views/tablet/forecast_card_tablet.dart';
import 'package:assignment_day9/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForecastScreenTablet extends StatelessWidget {
  const ForecastScreenTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forecast", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      drawer: DrawerCard(),
      backgroundColor: AppColor.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Perkiraan Cuaca Minggu Ini",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 8.0, top: 8)),
            Row(
              children: [
                Expanded(
                  child: ForecastTablet(
                    icon: FaIcon(FontAwesomeIcons.wind),
                    namaHari: "Senin",
                    suhu: 25,
                    cuaca: "Windy",
                    color: AppColor.fontColorSecondary,
                  ),
                ),
                SizedBox(width: 8),

                Expanded(
                  child: ForecastTablet(
                    icon: FaIcon(FontAwesomeIcons.solidSun),
                    namaHari: "Selasa",
                    suhu: 32,
                    cuaca: "Clear",
                    color: AppColor.fontColorSecondary,
                  ),
                ),
                SizedBox(width: 8),

                Expanded(
                  child: ForecastTablet(
                    icon: FaIcon(FontAwesomeIcons.cloud),
                    namaHari: "Rabu",
                    suhu: 19,
                    cuaca: "Clear",
                    color: AppColor.fontColorSecondary,
                  ),
                ),
                SizedBox(width: 8),

                Expanded(
                  child: ForecastTablet(
                    icon: FaIcon(FontAwesomeIcons.wind),
                    namaHari: "Kamis",
                    suhu: 26,
                    cuaca: "Windy",
                    color: AppColor.fontColorSecondary,
                  ),
                ),
                SizedBox(width: 8),

                Expanded(
                  child: ForecastTablet(
                    icon: FaIcon(FontAwesomeIcons.cloudRain),
                    namaHari: "Jum'at",
                    suhu: 23,
                    cuaca: "Rain",
                    color: AppColor.fontColorSecondary,
                  ),
                ),
                SizedBox(width: 8),

                Expanded(
                  child: ForecastTablet(
                    icon: FaIcon(FontAwesomeIcons.wind),
                    namaHari: "Sabtu",
                    suhu: 21,
                    cuaca: "Windy",
                    color: AppColor.fontColorSecondary,
                  ),
                ),
                SizedBox(width: 8),

                Expanded(
                  child: ForecastTablet(
                    icon: FaIcon(FontAwesomeIcons.solidSun),
                    namaHari: "Minggu",
                    suhu: 30,
                    cuaca: "Clear",
                    color: AppColor.fontColorSecondary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
