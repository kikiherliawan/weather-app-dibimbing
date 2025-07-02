import 'package:assignment_day9/core/components/drawer.dart';
import 'package:assignment_day9/core/constants/app_color.dart';
import 'package:assignment_day9/core/components/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: DrawerCard(),
      backgroundColor: AppColor.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Padding(padding: const EdgeInsets.only(bottom: 8.0)),
            MyCustomCard(
              icon: FaIcon(FontAwesomeIcons.wind),
              namaKota: "Bandung",
              suhu: 25,
              color: AppColor.fontColorSecondary,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  "/detail",
                  arguments: {
                    "namaKota": "Bandung",
                    "suhu": 25,
                    "icon": FontAwesomeIcons.wind,
                  },
                );
              },
            ),
            SizedBox(height: 8),
            MyCustomCard(
              icon: FaIcon(FontAwesomeIcons.solidSun),
              namaKota: "Jakarta",
              suhu: 36,
              color: AppColor.fontColorSecondary,
              onTap: () {},
            ),
            SizedBox(height: 8),
            MyCustomCard(
              icon: FaIcon(FontAwesomeIcons.cloud),
              namaKota: "Yogyakarta",
              suhu: 24,
              color: AppColor.fontColorSecondary,
              onTap: () {},
            ),
            SizedBox(height: 8),
            MyCustomCard(
              icon: FaIcon(FontAwesomeIcons.cloudRain),
              namaKota: "Raja Ampat",
              suhu: 20,
              color: AppColor.fontColorSecondary,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
