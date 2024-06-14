import 'package:app_6_responsive_app/widgets/activity_widget.dart';
import 'package:app_6_responsive_app/widgets/gar_graph_card.dart';
import 'package:app_6_responsive_app/widgets/header_widget.dart';
import 'package:app_6_responsive_app/widgets/line_chart.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            HeaderWidget(),
            SizedBox(
              height: 15,
            ),
            ActivityWidget(),
            SizedBox(
              height: 15,
            ),
            LineChartCard(),
            SizedBox(
              height: 15,
            ),
            BarGraphCard(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
