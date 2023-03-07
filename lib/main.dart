import 'package:catalog/models/category.dart';
import 'package:catalog/providers/get_all_company.dart';
import 'package:catalog/providers/home_screen_provider.dart';
import 'package:catalog/screens/category_screen.dart';
import 'package:catalog/screens/company_detail_screen.dart';
import 'package:catalog/screens/error_screen.dart';
import 'package:catalog/screens/home_screen.dart';
import 'package:catalog/screens/login_screen.dart';
import 'package:catalog/screens/register_screen.dart';
import 'package:catalog/screens/saved_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeScreenProvider()),
        ChangeNotifierProvider(
          create: (context) => GetAllCompany(),
        )
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
      routerConfig: GoRouter(
        initialLocation: '/homescreen',
        routes: [
          GoRoute(
            path: '/savedscreen',
            name: SavedScreen.routeName,
            builder: (context, state) => const SavedScreen(),
          ),
          GoRoute(
            path: '/homescreen',
            name: HomeScreen.routeName,
            builder: (context, state) => const HomeScreen(),
            routes: [
              GoRoute(
                path: 'categoryscreen/:categoryId',
                name: CategoryScreen.routeName,
                builder: (context, state) {
                  print(state.params['categoryId']);
                  return CategoryScreen(
                    id: int.parse(
                      state.params['categoryId'] as String,
                    ),
                  );
                },
                routes: [
                  GoRoute(
                    path: 'company:companyId',
                    name: CompanyDetailScreen.routeName,
                    builder: (context, state) => CompanyDetailScreen(
                      id: int.parse(state.params['companyId'] as String),
                    ),
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: '/register',
            name: RegisterScreen.routeName,
            builder: (context, state) => const RegisterScreen(),
          ),
          GoRoute(
            path: '/login',
            name: LoginScreen.routeName,
            builder: (context, state) => const LoginScreen(),
          ),
          GoRoute(
            path: '/errorscreen',
            name: ErrorScreen.routeName,
            builder: (context, state) => const ErrorScreen(),
          ),
        ],
      ),
    );
  }
}
