import 'package:flutter/material.dart';
import '../constants/app_color.dart';

class MyCustomCard extends StatelessWidget {
  final Widget icon;
  final String namaKota;
  final int suhu;
  final Color color;
  final VoidCallback onTap;
  const MyCustomCard({
    required this.icon,
    required this.namaKota,
    required this.suhu,
    required this.color,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 300,
        height: 100,
        decoration: BoxDecoration(
          color: AppColor.cardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$suhu°",
                    style: TextStyle(
                      fontSize: 34,
                      color: AppColor.fontColorPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    namaKota,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      color: AppColor.fontColorPrimary,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconTheme(
                data: IconThemeData(size: 50, color: color),
                child: icon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
