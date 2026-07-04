import 'package:ecommercace_app_ui/login/aboutpage.dart';
import 'package:flutter/material.dart';

import '../login/loginpage.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [


          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            accountName: const Text("Mahamudul Hasan"),
            accountEmail: const Text("mahamudulhasan459@email.com"),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpCLsbe68LGYoFLzWXh2uPqxBXoz3WL8lJF5Lnrwq9hGN765tNG8VSHqP9&s=10",
              ),
            ),
          ),

          // Drawer Items
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Profile"),
            onTap: () {

            },
          ),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {

            },
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("About"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutPage()));
            },
          ),

          ListTile(
            leading: const Icon(
              Icons.login,
              color: Colors.red,
            ),
            title: const Text(
              "Login or Sing up",
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}
