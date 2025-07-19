import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget exampleLineChart() {
  return AspectRatio(
    aspectRatio: 1.7, // Sabit oran veriyoruz ki sonsuz yükseklik hatası olmasın
    child: LineChart(
      LineChartData(
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: true),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: true),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: FlBorderData(show: false),
        lineBarsData: [
          LineChartBarData(
            isCurved: true,
            color: Colors.blueAccent,
            barWidth: 3,
            belowBarData: BarAreaData(show: true, color: Colors.blue.withOpacity(0.3)),
            spots: [
              FlSpot(0, 0),
              FlSpot(1, 1),
              FlSpot(2, 2),
              FlSpot(3, 3),
              FlSpot(4, 4),
              FlSpot(5, 5),
            ],
          ),
        ],
      ),
    ),
  );
}
