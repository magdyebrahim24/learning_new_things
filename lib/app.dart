import 'package:flutter/material.dart';

import 'design_patterns/design_patterns_home.dart';
import 'design_patterns/singleton/singleton_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "My learnings", home:  SingletonPage());
  }
}
