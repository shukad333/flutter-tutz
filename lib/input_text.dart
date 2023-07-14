import 'package:flutter/material.dart';

class InputTextDemo extends StatelessWidget {
  const InputTextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Input Text')),
      body: Center(
        child: Column(
          children: [
            TextField(controller: controller),
            TextButton(onPressed: (){ showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  // Retrieve the text the that user has entered by using the
                  // TextEditingController.
                  content: Text(controller.text),
                );
              },
            );},child: const Text('Press me'),)
          ],
        ),
      ),
    );
  }
}
