import 'package:catalog/providers/get_all_category.dart';
import 'package:catalog/screens/category_screen.dart';
import 'package:catalog/screens/company_detail.dart';
import 'package:catalog/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GetAllCategory()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          textTheme:
              const TextTheme(titleSmall: TextStyle(color: Colors.black))),
      routerConfig: GoRouter(
        initialLocation: '/category',
        routes: [
          GoRoute(
            path: '/',
            name: HomeScreen.routeName,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: '/company',
            name: CompanyDetail.routeName,
            builder: (context, state) => const CompanyDetail(),
          ),
          GoRoute(
            path: '/category',
            name: CategoryScreen.routeName,
            builder: (context, state) => const CategoryScreen(),
          ),
        ],
      ),
    );
  }
}
