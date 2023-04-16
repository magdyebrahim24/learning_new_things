import 'package:flutter/material.dart';

import 'singleton_pattern_imp.dart';

class SingletonPage extends StatefulWidget {
  const SingletonPage({Key? key}) : super(key: key);

  @override
  State<SingletonPage> createState() => _SingletonPageState();
}

class _SingletonPageState extends State<SingletonPage> {
  SingletonPattern? singletonPatternObj = SingletonPattern.getInstance();
  SingletonPattern? singletonPatternObj2 = SingletonPattern.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SingletonPage')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('singletonPatternObj first ==> ${singletonPatternObj?.count}'),
          const SizedBox(
            height: 30,
          ),
          Text('singletonPatternObj second ==> ${singletonPatternObj2?.count}'),
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
              onPressed: () {
                singletonPatternObj?.addOne();
                setState(() {});
              },
              child: const Icon(Icons.add)),
          FloatingActionButton(
              onPressed: () {
                singletonPatternObj2?.addOne();
                setState(() {});
              },
              child: const Icon(Icons.ad_units)),
        ],
      ),
    );
  }
}
