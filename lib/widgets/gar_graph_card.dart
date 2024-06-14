import 'package:app_6_responsive_app/constants/colors.dart';
import 'package:app_6_responsive_app/data/bar_graph_data.dart';
import 'package:app_6_responsive_app/models/graph_model.dart';
import 'package:app_6_responsive_app/utils/responsive.dart';
import 'package:app_6_responsive_app/widgets/custom_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphData();
    final bool isMobile = Responsive.isMobile(context);
    return GridView.builder(
      itemCount: barGraphData.data.length,
      shrinkWrap: true,
      //physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2 : 3,
        mainAxisSpacing: 12,
        crossAxisSpacing: 15,
        childAspectRatio: 5 / 4,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  barGraphData.data[index].lable,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: greyColor,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                child: BarChart(
                  BarChartData(
                    barGroups: _chartGroups(
                      color: barGraphData.data[index].color,
                      point: barGraphData.data[index].graph,
                    ),
                    borderData: FlBorderData(
                      border: Border(),
                    ),
                    titlesData: FlTitlesData(
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
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
                            return Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                barGraphData.label[value.toInt()],
                                style: TextStyle(
                                  fontSize: 11,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<BarChartGroupData> _chartGroups({
    required List<GraphModel> point,
    required Color color,
  }) {
    return point
        .map(
          (point) => BarChartGroupData(
            x: point.x.toInt(),
            barRods: [
              BarChartRodData(
                toY: point.y,
                width: 12,
                color: color.withOpacity(point.y.toInt() > 4 ? 1 : 0.4),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(3),
                  topRight: Radius.circular(3),
                ),
              )
            ],
          ),
        )
        .toList();
  }
}
