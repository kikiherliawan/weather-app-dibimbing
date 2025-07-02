import 'package:assignment_day9/core/components/custom_card_tablet.dart';
import 'package:assignment_day9/core/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:assignment_day9/core/constants/app_color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weather App")),
      drawer: DrawerCard(),
      backgroundColor: AppColor.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: MyCustomCard2(
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
                ),
                SizedBox(width: 8),
                Expanded(
                  child: MyCustomCard2(
                    icon: FaIcon(FontAwesomeIcons.solidSun),
                    namaKota: "Jakarta",
                    suhu: 36,
                    color: AppColor.fontColorSecondary,
                    onTap: () {},
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: MyCustomCard2(
                    icon: FaIcon(FontAwesomeIcons.cloud),
                    namaKota: "Yogyakarta",
                    suhu: 24,
                    color: AppColor.fontColorSecondary,
                    onTap: () {},
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: MyCustomCard2(
                    icon: FaIcon(FontAwesomeIcons.cloudRain),
                    namaKota: "Raja Ampat",
                    suhu: 20,
                    color: AppColor.fontColorSecondary,
                    onTap: () {},
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
