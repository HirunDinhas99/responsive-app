import 'package:app_6_responsive_app/constants/colors.dart';
import 'package:app_6_responsive_app/data/sheduled_tesk_data.dart';
import 'package:app_6_responsive_app/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class SheduledWidget extends StatelessWidget {
  const SheduledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final sheduledData = ScheduleTasksData();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        Text(
          "Sheduled",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: secondaryColor,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        for (var index = 0; index < sheduledData.scheduled.length; index++)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: CustomCard(
              color: limeColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sheduledData.scheduled[index].title,
                        style: TextStyle(
                          fontSize: 12,
                          color: secondaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        sheduledData.scheduled[index].date,
                        style: TextStyle(
                          fontSize: 12,
                          color: greyColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.alarm,
                    color: greyColor,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
