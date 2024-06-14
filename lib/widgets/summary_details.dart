import 'package:app_6_responsive_app/constants/colors.dart';
import 'package:app_6_responsive_app/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildDetails("Cal", "305"),
            buildDetails("Steps", "2500"),
            buildDetails("Distance", "7k"),
            buildDetails("Sleep", "7h"),
          ],
        ),
      ),
      color: limeColor,
    );
  }

  Widget buildDetails(String key, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          key,
          style: TextStyle(
            fontSize: 13,
            color: secondaryColor,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 10,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
