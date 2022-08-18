import 'package:flutter/material.dart';
import 'package:lesson_provider/view/home_view.dart';
import 'package:lesson_provider/view_model/counter_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => CounterViewModel(),
        child: const HomeView()
    );
  }
}
