import 'package:flutter/material.dart';
import 'package:flutter_toast_example/pages/toast_without_context_page.dart';
import 'package:flutter_toast_example/pages/toast_with_context_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Toast Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ToastWithPage(),
    );
  }
}
