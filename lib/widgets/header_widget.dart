import 'package:app_6_responsive_app/constants/colors.dart';
import 'package:app_6_responsive_app/utils/responsive.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDeskto(context);
    return Row(
      children: [
        if (!isDesktop)
          Padding(
            padding: const EdgeInsets.all(8),
            child: IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: greyColor,
                size: 25,
              ),
            ),
          ),
        Expanded(
          child: TextField(
            style: const TextStyle(
              color: greyColor,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: cardBgColor,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              labelStyle: const TextStyle(
                color: greyColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 5),
              hintText: "Search",
              hintStyle: const TextStyle(
                color: greyColor,
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: greyColor,
                size: 21,
              ),
            ),
          ),
        ),
        if (!isDesktop)
          InkWell(
            onTap: () {
              Scaffold.of(context).openEndDrawer();
            },
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/avatar.jpg",
                    width: 50,
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
