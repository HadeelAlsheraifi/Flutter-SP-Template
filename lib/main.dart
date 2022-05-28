import 'package:flutter/material.dart';
import './screens/home_page.dart';
import './screens/splash.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      debugShowCheckedModeBanner: false,


    );
  }
   final _router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => SplashWidget(),
      ),
      GoRoute(
        path: "/home",
        builder: (context, state) => HomePage(),
      ),
    ],
  );


}