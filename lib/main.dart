import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import "package:pet_gallery/signinScreen.dart";
import "signupScreen.dart";
import "landingScreen.dart";
import "homeScreen.dart";


// USE FIREBASE AUTHENTICATION

void main() {
  runApp(MyApp());
}

final _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const LandingScreen();
        }),
    GoRoute(
        path: '/signupScreen',
        builder: (BuildContext context, GoRouterState state) {
          return const SignupScreen();
        }),
    GoRoute(
      path: '/homeScreen',
      builder: (BuildContext context, GoRouterState state) {
        return HomeScreen();
      },
    ),
    GoRoute(
      path: '/signinScreen',
      builder: (BuildContext context, GoRouterState state) {
        return SigninScreen();
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Pet Gallery',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 121, 94, 56)),
      ),
    );
  }
}
