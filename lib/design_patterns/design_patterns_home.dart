
import 'package:flutter/material.dart';

class DesignPatternsHome extends StatefulWidget {
  const DesignPatternsHome({Key? key}) : super(key: key);

  @override
  State<DesignPatternsHome> createState() => _DesignPatternsHomeState();
}

class _DesignPatternsHomeState extends State<DesignPatternsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Design Patterns Home"),),
    );
  }
}
