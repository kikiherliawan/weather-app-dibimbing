import 'package:assignment_day9/core/components/drawer.dart';
import 'package:assignment_day9/core/components/forecast_card_mobile.dart';
import 'package:assignment_day9/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

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
        child: ListView(
          children: [
            Text(
              "Perkiraan Cuaca Minggu Ini",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 8.0, top: 8)),
            ForecastMobile(
              icon: FaIcon(FontAwesomeIcons.wind),
              namaHari: "Senin",
              suhu: 25,
              color: AppColor.fontColorSecondary,
            ),
            SizedBox(height: 8),
            ForecastMobile(
              icon: FaIcon(FontAwesomeIcons.solidSun),
              namaHari: "Selasa",
              suhu: 32,
              color: AppColor.fontColorSecondary,
            ),
            SizedBox(height: 8),
            ForecastMobile(
              icon: FaIcon(FontAwesomeIcons.cloud),
              namaHari: "Rabu",
              suhu: 19,
              color: AppColor.fontColorSecondary,
            ),
            SizedBox(height: 8),
            ForecastMobile(
              icon: FaIcon(FontAwesomeIcons.wind),
              namaHari: "Kamis",
              suhu: 26,
              color: AppColor.fontColorSecondary,
            ),
            SizedBox(height: 8),
            ForecastMobile(
              icon: FaIcon(FontAwesomeIcons.cloudRain),
              namaHari: "Jum'at",
              suhu: 23,
              color: AppColor.fontColorSecondary,
            ),
            SizedBox(height: 8),
            ForecastMobile(
              icon: FaIcon(FontAwesomeIcons.wind),
              namaHari: "Sabtu",
              suhu: 21,
              color: AppColor.fontColorSecondary,
            ),
            SizedBox(height: 8),
            ForecastMobile(
              icon: FaIcon(FontAwesomeIcons.solidSun),
              namaHari: "Minggu",
              suhu: 30,
              color: AppColor.fontColorSecondary,
            ),
          ],
        ),
      ),
    );
  }
}
