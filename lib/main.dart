import 'package:flutter/material.dart';
import 'package:travel_app/pages/navPages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          splashFactory: NoSplash.splashFactory,
          // splashColor: Colors.transparent,
          // highlightColor: Colors.transparent,
          primarySwatch: Colors.blue,
        ),
        home: const MainPage());
  }
}
