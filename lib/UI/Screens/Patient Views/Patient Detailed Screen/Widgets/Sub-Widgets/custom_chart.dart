import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:rehabit/UI/Constants/constants.dart';

// Future Screen: Not needed now, kore pani ind

class CustomChart extends StatelessWidget {
  const CustomChart({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widget = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.29,
      width: widget * 0.9,
      decoration: BoxDecoration(
        color: primaryBackground
      ),
      child: BarChart(
        BarChartData(
          maxY: 50,
          minY: 0,
          alignment: BarChartAlignment.spaceEvenly,
titlesData: FlTitlesData(
  rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
  topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
  bottomTitles: AxisTitles(
    sideTitles: SideTitles(
      reservedSize: 32,  // Adjust the size to fit the text better
      showTitles: true,
      getTitlesWidget: (value, meta) {
        // This will display labels for Monday to Sunday
        const weekDays = [
          'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'
        ];

        // Map the value (x-axis) to the correct day
        int index = value.toInt();
        if (index >= 0 && index < weekDays.length) {
          return Text(
            weekDays[index],  // Use the index to map to the days of the week
            style: TextStyle(
              fontSize: 10,  // Adjust the font size if necessary
              color: Colors.black,
            ),
          );
        }
        return Container(); // Return an empty container if the value is out of bounds
      },
    ),
  ),
),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(toY: 10)
              ]
            ),
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(toY: 10)
              ]
            ),
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(toY: 10)
              ]
            ),
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(toY: 10)
              ]
            ),
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(toY: 10)
              ]
            ),
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(toY: 10)
              ]
            ),
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(toY: 10)
              ]
            ),
          ]
        )
      ),
    );
  }
}