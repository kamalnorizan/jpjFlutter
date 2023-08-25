import 'package:dashboard/Screen/dashboard.dart';
import 'package:dashboard/Screen/home.dart';
import 'package:flutter/material.dart';

import '../Screen/formScreen.dart';
import '../Screen/listViewScreen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            // child: Image.asset('assets/JPJ_logo_0.png'),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Icon(
                    Icons.account_circle,
                    size: 80,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Ahmad Kamal',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            subtitle: const Text('Dashboard'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Dashboard(),
                ),
              );
            },
            // trailing: Icon(Icons.home),
          ),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Form'),
            subtitle: const Text('Registration Form'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => FormScreen(),
                ),
              );
            },
            // trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: const Icon(Icons.list_alt),
            title: const Text('List View'),
            subtitle: const Text('Widget'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ListViewScreen(),
                ),
              );
            },
            // trailing: Icon(Icons.list),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            subtitle: Text('Widget'),
            // trailing: Icon(Icons.list),
          ),
        ],
      ),
    );
  }
}