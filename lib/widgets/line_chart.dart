import 'package:app_6_responsive_app/constants/colors.dart';
import 'package:app_6_responsive_app/data/line_chart_data.dart';
import 'package:app_6_responsive_app/widgets/custom_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  //line chart data

  @override
  Widget build(BuildContext context) {
    final data = LineData();
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Steps Overview",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: greyColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: LineTouchData(
                  handleBuiltInTouches: true,
                ),
                titlesData: FlTitlesData(
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                    ),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return data.bottomTitle[value.toInt()] != null
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  data.bottomTitle[value.toInt()].toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: greyColor,
                                  ),
                                ),
                              )
                            : SizedBox();
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      reservedSize: 40,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return data.leftTitle[value.toInt()] != null
                            ? Text(
                                data.leftTitle[value.toInt()].toString(),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: greyColor,
                                ),
                              )
                            : SizedBox();
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                lineBarsData: [
                  LineChartBarData(
                    color: sectionColor,
                    barWidth: 2.5,
                    belowBarData: BarAreaData(
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple.withOpacity(0.5),
                          Colors.transparent,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    dotData: FlDotData(
                      show: false,
                    ),
                    spots: data.spots,
                  ),
                ],
                minX: 0,
                maxX: 120,
                minY: 0,
                maxY: 100,
              ),
            ),
          )
        ],
      ),
    );
  }
}
