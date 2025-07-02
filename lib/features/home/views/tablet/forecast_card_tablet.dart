import 'package:flutter/material.dart';
import '../../../../core/constants/app_color.dart';

class ForecastTablet extends StatelessWidget {
  final Widget icon;
  final String namaHari;
  final int suhu;
  final String cuaca;
  final Color color;
  const ForecastTablet({
    required this.icon,
    required this.namaHari,
    required this.suhu,
    required this.cuaca,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 200,
      decoration: BoxDecoration(
        color: AppColor.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                namaHari,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                  color: AppColor.fontColorPrimary,
                ),
              ),
              IconTheme(
                data: IconThemeData(size: 50, color: color),
                child: icon,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    Text(
                      cuaca,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                        color: AppColor.fontColorPrimary,
                      ),
                    ),
                    Text(
                      "$suhu°",
                      style: TextStyle(
                        fontSize: 27,
                        color: AppColor.fontColorPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
