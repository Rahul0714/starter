import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../widgets/myCard.dart';
import 'dart:convert';
import '../widgets/myDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final TextEditingController _inputController = TextEditingController();
  // String name = "Change my Name";

  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(data[index]["thumbnailUrl"]),
                  title: Text(data[index]["title"]),
                  subtitle: Text("ID:${data[index]["id"]}"),
                );
              },
              itemCount: data.length)
          : const Center(child: CircularProgressIndicator()),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
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
