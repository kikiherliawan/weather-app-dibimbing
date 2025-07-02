import 'package:flutter/material.dart';
import '../../../../core/constants/app_color.dart';

class ForecastMobile extends StatelessWidget {
  final Widget icon;
  final String namaHari;
  final int suhu;
  final Color color;
  const ForecastMobile({
    required this.icon,
    required this.namaHari,
    required this.suhu,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        color: AppColor.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              namaHari,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                color: AppColor.fontColorPrimary,
              ),
            ),
          ),

          Row(
            children: [
              IconTheme(
                data: IconThemeData(size: 25, color: color),
                child: icon,
              ),
              SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  "$suhu°",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColor.fontColorPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
