import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:yugioh_card/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Yu-Gi-Oh! Card Collection',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: const Color(0xFF0D6EFD),
          scaffoldBackgroundColor: const Color(0xFF001B35),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF001427),
          ),
          drawerTheme: const DrawerThemeData(
            backgroundColor: Color(0xFF001B35),
          ),
          snackBarTheme: const SnackBarThemeData(
            backgroundColor: Color(0xFF031633),
            contentTextStyle: TextStyle(color: Color(0xFF6EA8FE)),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          useMaterial3: true,
        ),
        home: const LoginPage(),
      ),
    );
  }
}
