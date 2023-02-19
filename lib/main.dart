import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _myController = TextEditingController();
  List<String> tasks = [];

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  void _handleNewTask(String task) {
    setState(() {
      tasks.add(task);
      _myController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _myController,
                  onSubmitted: (value) => _handleNewTask(value),
                  decoration: const InputDecoration(
                    labelText: 'Add new Task',
                    hintText: 'Throw trash away',
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
