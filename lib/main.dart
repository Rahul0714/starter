import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
    theme: ThemeData(primarySwatch: Colors.amber),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _inputController = TextEditingController();

  String name = "Change my Name";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
              child: Column(
            children: [
              Image.asset("/img.jpg", fit: BoxFit.cover),
              const SizedBox(
                height: 21,
              ),
              Text(
                name,
                style:
                    const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
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
          )),
        ),
      )),
      drawer: Drawer(
        child: ListView(children: const [
          UserAccountsDrawerHeader(
            accountName: Text("Rahul Mujumdar"),
            accountEmail: Text("rahul@mail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8a29zdGVubG9zZSUyMGJpbGRlcnxlbnwwfHwwfHw%3D&w=1000&q=80"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Rahul Mujumdar"),
            subtitle: Text("Nothing"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("rahul@mail.com"),
            trailing: Icon(Icons.edit),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          name = _inputController.text;
          setState(() {});
        },
        child: const Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ),
    );
  }
}
