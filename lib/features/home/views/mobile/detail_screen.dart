import 'package:assignment_day9/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailScreenWeatcher extends StatelessWidget {
  final String namaKota;
  final int suhu;
  final IconData icon;

  const DetailScreenWeatcher({
    super.key,
    required this.namaKota,
    required this.suhu,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail", style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: FaIcon(FontAwesomeIcons.arrowLeft),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  namaKota,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColor.fontColorPrimary,
                  ),
                ),
                SizedBox(width: 8),

                // ignore: avoid_unnecessary_containers
                Container(
                  child: Row(
                    children: [
                      FaIcon(icon, color: AppColor.fontColorPrimary),
                      SizedBox(width: 8),
                      Text(
                        "Windy",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColor.fontColorPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "$suhu°",
              style: TextStyle(fontSize: 210, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
