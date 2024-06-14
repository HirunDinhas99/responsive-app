import 'package:app_6_responsive_app/constants/colors.dart';
import 'package:app_6_responsive_app/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  //index traker
  int selectedIndex = 0;

  final sideMenuData = SideMenuData();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 80,
      ),
      color: bgColor,
      child: ListView.builder(
        itemCount: sideMenuData.sideMenu.length,
        itemBuilder: (context, index) {
          return _sideMenuList(sideMenuData, index);
        },
      ),
    );
  }

  Widget _sideMenuList(SideMenuData sideMenuData, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          print(selectedIndex);
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: selectedIndex == index ? sectionColor : Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                sideMenuData.sideMenu[index].icon,
                color: selectedIndex == index ? Colors.black : greyColor,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                sideMenuData.sideMenu[index].title,
                style: TextStyle(
                  color: selectedIndex == index ? Colors.black : greyColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
