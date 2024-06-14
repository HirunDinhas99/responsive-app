import 'package:app_6_responsive_app/constants/colors.dart';
import 'package:app_6_responsive_app/widgets/pie_chart.dart';
import 'package:app_6_responsive_app/widgets/sheduled_widget.dart';
import 'package:app_6_responsive_app/widgets/summary_details.dart';
import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardBgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            PieChartCard(),
            Text(
              "Summary",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: greyColor,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SummaryDetails(),
            SizedBox(
              height: 16,
            ),
            SheduledWidget(),
          ],
        ),
      ),
    );
  }
}
