import 'package:f03_widget_app/config/router/app_router.dart';
import 'package:f03_widget_app/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      // home: const HomeScreen(),
      // routes: {
      //   '/buttons': (context) => const ButtonScreen(),
      //   '/cards': (context) => const CardsScreen()
      // },
    );
  }
}
