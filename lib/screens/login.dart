// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:yugioh_card/screens/menu.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login',
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
        home: const LoginPage());
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final request = Provider.of<CookieRequest>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).primaryColor,
                ),
              ),
              onPressed: () async {
                String username = _usernameController.text;
                String password = _passwordController.text;

                final response = await request
                    .login("https://pras-yugioh-card.onrender.com/auth/login", {
                  "username": username,
                  "password": password,
                });

                if (request.loggedIn) {
                  String message = response["message"];
                  String uname = response["username"];
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Menu()));
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: Text("$message! Welcome $uname!"),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Login Failed"),
                      content: Text(response["message"]),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("OK"),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0, // Increase font size
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
