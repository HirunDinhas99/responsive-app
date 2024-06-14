import 'package:app_6_responsive_app/utils/responsive.dart';
import 'package:app_6_responsive_app/widgets/dashboard.dart';
import 'package:app_6_responsive_app/widgets/side_menu.dart';
import 'package:app_6_responsive_app/widgets/summary.dart';
import 'package:app_6_responsive_app/widgets/summary_details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDeskto(context);
    return Scaffold(
      drawer: !isDesktop
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: SideMenu(),
            )
          : null,
      endDrawer: !isDesktop
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Summary(),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            //Side Menu
            if (isDesktop)
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideMenu(),
                ),
              ),
            //Dashboard
            Expanded(
              flex: 7,
              child: SizedBox(
                child: Dashboard(),
              ),
            ),
            //Summary
            if (isDesktop)
              Expanded(
                flex: 3,
                child: SizedBox(
                  child: Summary(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
