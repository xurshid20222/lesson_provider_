import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyModel>(
      initialData: MyModel(someValue: 'default value'),
      create: (context) => getStreamOfMyModel(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('My App')),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.green[200],
                child: Consumer<MyModel>(builder: (context, myModel, child) {
                  return ElevatedButton(
                    child: const Text('Do something'),
                    onPressed: () {
                      myModel.doSomething();
                    },
                  );
                }),
              ),
              Container(
                  padding: const EdgeInsets.all(35),
                  color: Colors.blue[200],
                  child: Consumer<MyModel>(
                    builder: (context, myModel, child) {
                      return Text(myModel.someValue);
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

Stream<MyModel> getStreamOfMyModel() {
  return Stream<MyModel>.periodic(const Duration(seconds: 1), (x) => MyModel(someValue: '$x')).take(10);
}

class MyModel {
  MyModel({required this.someValue});

  String someValue = 'Hello';

  void doSomething() {
    someValue = 'Goodbye';
    debugPrint(someValue);
  }
}
