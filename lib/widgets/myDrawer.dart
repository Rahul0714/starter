import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
