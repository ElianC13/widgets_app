import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Listado de colores
final colorListProvider = Provider((ref) => colorList);

//boleano
final themeProvider = StateProvider((ref) => false);

//int
final selectedColorProvider = StateProvider((ref) => 0);

//obj personalizado
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//controller o notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // estado = new AppTheme()
  ThemeNotifier() : super( AppTheme() );

  void toggleDarkmode() {
    state = state.copyWith(darkMode: !state.darkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}