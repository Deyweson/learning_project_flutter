import 'package:flutter/material.dart';
import 'package:learning_project/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});
  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefas", style: TextStyle(color: Colors.white)),
        leading: Container(),
      ),
      body: AnimatedOpacity(
        duration: Duration(milliseconds: 1000),
        opacity: isVisible ? 1 : 0,
        child: ListView(
          children: [
            Task(
              "tarefa",
              'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
              3,
            ),
            Task("tarefa", "", 1),
            Task("tarefa", "", 2),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isVisible = !isVisible;
          });
        },
        child: Icon(
          isVisible ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
        ),
      ),
    );
  }
}