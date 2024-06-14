import 'package:app_6_responsive_app/constants/colors.dart';
import 'package:app_6_responsive_app/data/health_detail_data.dart';
import 'package:app_6_responsive_app/utils/responsive.dart';
import 'package:app_6_responsive_app/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final healthmodelData = HealthDetails();
    final bool isMobile = Responsive.isMobile(context);
    return GridView.builder(
      shrinkWrap: true,
      itemCount: healthmodelData.healthDetails.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2 : 4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                healthmodelData.healthDetails[index].icon,
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 4),
                child: Text(
                  healthmodelData.healthDetails[index].value,
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                healthmodelData.healthDetails[index].title,
                style: TextStyle(
                  color: greyColor,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
