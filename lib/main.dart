import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pml/domain/barang.dart';
import 'package:pml/pages/detail_shoping_screen.dart';
import 'package:pml/pages/shoping_screen.dart';
import 'package:pml/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, _) => const ShopingScreen(),
      routes: [
        GoRoute(
          path: 'detail/:id',
          builder: (context, state) => DetailShopingScreen(
            id: state.pathParameters['id']!,
            barang: state.extra as Barang?,
          ),
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Shopping List Marketplace',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
    );
  }
}
