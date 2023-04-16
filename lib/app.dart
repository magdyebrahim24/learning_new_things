import 'package:flutter/material.dart';
import 'package:learning_new_things/design_patterns/creational_patterns/singleton/singleton_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "My learnings", home:  SingletonPage());
  }
}
