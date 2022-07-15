import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
    required this.name,
    required TextEditingController inputController,
  })  : _inputController = inputController,
        super(key: key);

  final String name;
  final TextEditingController _inputController;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Image.asset("/img.jpg", fit: BoxFit.cover),
        const SizedBox(
          height: 21,
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 21,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: TextField(
            decoration: const InputDecoration(
                hintText: "Enter Your Name",
                labelText: "Name",
                // floatingLabelBehavior: FloatingLabelBehavior.never,
                border: OutlineInputBorder()),
            controller: _inputController,
          ),
        )
      ],
    ));
  }
}
