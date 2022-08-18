import 'package:flutter/material.dart';
import 'package:lesson_provider/view/home_view.dart';
import 'package:lesson_provider/view_model/counter_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // final counter = Provider.of<CounterViewModel>(context);
    return ChangeNotifierProvider(
      create: (BuildContext context) => CounterViewModel(),
      builder: (context, child) {
        final counter = Provider.of<CounterViewModel>(context);
        return Scaffold(
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: const Text(
                    "+1",
                    style: TextStyle(color: Colors.greenAccent, fontSize: 25),
                  ),
                  onPressed: () => counter.increment(),
                ),
                Text(
                  "${counter.counter}",
                  style: const TextStyle(fontSize: 30),
                ),
                ElevatedButton(
                  child: const Text(
                    "-1",
                    style: TextStyle(color: Colors.redAccent, fontSize: 25),
                  ),
                  onPressed: () => counter.decrement(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
