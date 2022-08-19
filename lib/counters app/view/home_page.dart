import 'package:flutter/material.dart';
import 'package:lesson_provider/counters%20app/view/counter_one_view.dart';
import 'package:lesson_provider/counters%20app/view/counter_two_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          CounterOneView(),
          CounterTwoView(),
        ],
      ),
    );
  }
}
