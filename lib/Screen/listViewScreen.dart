import 'package:flutter/material.dart';

import '../Widgets/customDrawer.dart';

class ListViewScreen extends StatelessWidget {
  List names = ['Zainal', 'Amir', 'Kamarul', 'Shafiq', 'Diana', 'Siti'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        drawer: CustomDrawer(),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              leading: Icon(Icons.supervised_user_circle),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(
                names[index],
              ),
            );
          },
        ));
  }
}
