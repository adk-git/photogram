import 'package:flutter/material.dart';
import 'package:photogram/routes/app_pages.dart';
import 'package:photogram/routes/app_routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task-4',
      debugShowCheckedModeBanner: false,
      routes: AppPages.pages,
      initialRoute: AppRoutes.initial,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
