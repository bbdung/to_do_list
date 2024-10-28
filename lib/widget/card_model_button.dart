import 'package:flutter/material.dart';

class CardModelButton extends StatefulWidget {
  const CardModelButton({super.key, required this.addTask});
  final Function addTask;

  @override
  State<CardModelButton> createState() => _CardModelButtonState();
}

class _CardModelButtonState extends State<CardModelButton> {
  TextEditingController controller = TextEditingController();

  void _handleOnclick() {
    final name = controller.text;
    widget.addTask(name);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Task'),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _handleOnclick,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                child: const Text('Add Task',
                    style: TextStyle(color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
