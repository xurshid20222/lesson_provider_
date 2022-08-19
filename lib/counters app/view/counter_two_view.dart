import 'package:flutter/material.dart';
import 'package:lesson_provider/counters%20app/view/home_page.dart';
import 'package:lesson_provider/counters%20app/view_model/counter_view_model.dart';
import 'package:provider/provider.dart';

class CounterTwoView extends StatelessWidget {
  const CounterTwoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => model, // two
      builder: (context, child) {
        debugPrint("This line 14 rebuild");
        var counterModel = Provider.of<CounterViewModel>(context, listen: false);
        return Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: const Text("+1", style: TextStyle(color: Colors.greenAccent, fontSize: 25),),
                onPressed: () => counterModel.twoIncrement(),
              ),

              Consumer<CounterViewModel>(
                  builder: (context, model, child) {
                    debugPrint("This line 27 rebuild");
                    return Text("one: ${model.counterModel.counterOne}, two: ${model.counterModel.counterTwo}", style: const TextStyle(fontSize: 30),);
                  }
              ),

              ElevatedButton(
                child: const Text("-1", style: TextStyle(color: Colors.greenAccent, fontSize: 25),),
                onPressed: () => counterModel.twoDecrement(),
              ),
            ],
          ),
        );
      },
    );
  }
}
