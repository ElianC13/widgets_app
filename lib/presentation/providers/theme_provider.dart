import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Listado de colores
final colorListProvider = Provider((ref) => colorList);

//boleano
final themeProvider = StateProvider((ref) => false);

//int
final selectedColorProvider = StateProvider((ref) => 0);