import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:surgtest_smpl/screens/dashboard_screen.dart';
import 'package:surgtest_smpl/screens/register_screen.dart';
import 'package:surgtest_smpl/widgets/custompage_route.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  var _enteredEmail = '';
  var _enteredPassword = '';

  void _login() async {
    final baseUrl = Uri.parse('https://api.surgtest.com/v3/api_login');
    final response = await http.post(
      baseUrl,
      headers: {'Content-Type': 'application/json'},
      body: json.encode(
        {
          'username': _enteredEmail,
          'password': _enteredPassword,
        },
      ),
    );
    if (response.statusCode <= 201) {
      final responceValue = json.decode(response.body);
      final refreshToken = responceValue['token'];

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const DashboardScreen(),
        ),
      );
      print(response.body);
      print(refreshToken);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 220,
            ),
            Center(
              child: Image.asset(
                'assets/images/surgtest_splashscreen.png',
                width: 160,
                height: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      key: _formKey,
                      decoration: const InputDecoration(
                        label: Text('Email'),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Text Field cannot be empty';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _enteredEmail = value!;
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Password'),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Text Feild cannot be Empty';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _enteredPassword = value!;
                      },
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 135, 93, 233),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 280,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 135, 93, 233),
                        ),
                        onPressed: () {
                          _login;
                        },
                        child: const Text('Log In'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have account?"),
                        const SizedBox(
                          width: 4,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(CustomPageRoute(
                              child: const RegisterScreen(),
                            ));
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(
                              color: Color.fromARGB(255, 135, 93, 233),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
