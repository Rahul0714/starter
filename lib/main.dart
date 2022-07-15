import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
    theme: ThemeData(primarySwatch: Colors.amber),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              gradient:
                  const LinearGradient(colors: [Colors.pink, Colors.yellow]),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 14,
                )
              ]),
          child: const Text(
            "Hello Flutter",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
