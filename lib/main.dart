import 'package:flutter/material.dart';
import "./form/add_todo.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Todos")),
      body: Builder(
        builder: (context) => Container(
          padding: const EdgeInsets.all(10),
          child: Stack(children: [
            Align(
                alignment: const Alignment(0.9, 0.9),
                child: FloatingActionButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return const SizedBox(
                            height: 300,
                            child: Padding(
                              padding: EdgeInsets.all(14.0),
                              child: AddTodoForm(),
                            ),
                          );
                        });
                  },
                  child: const Icon(Icons.add),
                ))
          ]),
        ),
      ),
    );
  }
}
