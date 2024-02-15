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

const appMenutItems = <MenuItem> [
  MenuItem(
    title: "Counter Screen", 
    subTitle: "Un contador", 
    link: "/counter", 
    icon: Icons.add
    ),
  MenuItem(
    title: "Botones", 
    subTitle: "Varios botones en Flutter", 
    link: "/buttons", 
    icon: Icons.smart_button_outlined
    ),
  MenuItem(
    title: "Tarjetas", 
    subTitle: "Un contenedor estilizado", 
    link: "/cards", 
    icon: Icons.credit_card
    ),
  MenuItem(
    title: "ProgressIndicator", 
    subTitle: "Generales y controlados", 
    link: "/progress", 
    icon: Icons.refresh_rounded
    ),
  MenuItem(
    title: "SnackBars y dialogos", 
    subTitle: "Indicadores en pantalla", 
    link: "/snackbars", 
    icon: Icons.info_outline
    ),
  MenuItem(
    title: "Animated container", 
    subTitle: "Stateful widget animado", 
    link: "/animated", 
    icon: Icons.check_box_outline_blank_rounded
    ),
  MenuItem(
    title: "Ui Controls + Tiles", 
    subTitle: "Serie de controles en Flutter", 
    link: "/ui-controls", 
    icon: Icons.car_rental_outlined
    ),
  MenuItem(
    title: "Introduccion a la aplicacion", 
    subTitle: "Tutorial introductorio", 
    link: "/tutorial", 
    icon: Icons.accessibility_rounded
    ),
  MenuItem(
    title: "InfiniteScroll y Pull", 
    subTitle: "Listas infinitas y Pull to refresh", 
    link: "/infinite", 
    icon: Icons.list_alt_rounded
    ),
    MenuItem(
    title: "Cambiar tema", 
    subTitle: "Cambiar tema de la aplicacion", 
    link: "/theme-changer", 
    icon: Icons.color_lens_outlined
    ),

  
];