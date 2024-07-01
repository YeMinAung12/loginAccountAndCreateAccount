import 'package:flutter/material.dart';
import 'package:login_and_create_account/createAccount.dart';
import 'package:login_and_create_account/loginaccount.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body:  Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CreateAccount();
  }
}