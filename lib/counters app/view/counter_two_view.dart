import 'package:flutter/material.dart';

class CounterTwoView extends StatelessWidget {
  const CounterTwoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            child: const Text("+1", style: TextStyle(color: Colors.greenAccent, fontSize: 25),),
            onPressed: () {},
          ),

          Text("0", style: const TextStyle(fontSize: 30),),

          ElevatedButton(
            child: const Text("+1", style: TextStyle(color: Colors.greenAccent, fontSize: 25),),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
