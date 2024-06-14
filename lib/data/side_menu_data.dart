import 'package:app_6_responsive_app/models/side_menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final sideMenu = <SideMenuModel>[
    SideMenuModel(
      icon: Icons.home,
      title: "Home",
    ),
    SideMenuModel(
      icon: Icons.person,
      title: "Profile",
    ),
    SideMenuModel(
      icon: Icons.run_circle,
      title: "Exercise",
    ),
    SideMenuModel(
      icon: Icons.settings,
      title: "Settings",
    ),
    SideMenuModel(
      icon: Icons.history,
      title: "History",
    ),
    SideMenuModel(
      icon: Icons.logout,
      title: "SignOut",
    ),
  ];
}
