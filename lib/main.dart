import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tripfronend/pages/editmyprofile.dart';
import 'pages/mainscreen.dart';
import '../utils/constants.dart';
import 'pages/signin.dart';
import 'pages/signup_page.dart';
import 'providers/authprovider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider()),
  ], child: MyApp()));
}

final _router = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => SigninPage()),
  GoRoute(path: "/signup", builder: (context, state) => SignUp()),
  GoRoute(path: "/mainscreen", builder: (context, state) => MainScreen()),
  GoRoute(path: "/editprofile", builder: (context, state) => EditMyProfile()),
]);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
      theme: Constants.darkTheme,
    );
  }
}
