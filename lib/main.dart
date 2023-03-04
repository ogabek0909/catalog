import 'package:catalog/providers/home_screen_provider.dart';
import 'package:catalog/screens/category_screen.dart';
import 'package:catalog/screens/company_detail.dart';
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
          ),
          GoRoute(
            path: '/company', 
            name: CompanyDetail.routeName,
            builder: (context, state) => const CompanyDetail(),
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
            path: '/categoryscreen',
            name: CategoryScreen.routeName,
            builder: (context, state) => const CategoryScreen(),
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
