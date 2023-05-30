import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listicons {
  IconData icon;
  String title;
  listicons({
     required this.icon,
     required this.title
  });
  static List<listicons> iconslist=[
   listicons(
    icon: Icons.qr_code,
     title: 'Category'),
    listicons(
     icon: Icons.airplanemode_active,
     title: 'Flight'),
    listicons(
     icon: Icons.receipt_long,
     title: 'Bill'),
    listicons(
     icon: Icons.hive,
     title: 'Data'),
    listicons(
     icon: Icons.settings,
     title: 'Setting'),
  ];
}