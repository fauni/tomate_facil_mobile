import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
  });
}

const appMenuItems = <MenuItem>[
    MenuItem(
      title: 'Home', 
      subTitle: 'Pagina Principal', 
      link: '/', 
      icon: Icons.home_filled
    ),

    MenuItem(
      title: 'Reportes', 
      subTitle: 'Pagina principal de Reportes', 
      link: '/reportes', 
      icon: Icons.picture_as_pdf_outlined
    ),
  ];