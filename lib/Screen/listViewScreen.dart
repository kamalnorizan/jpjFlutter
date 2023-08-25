import 'package:flutter/material.dart';

import '../Widgets/customDrawer.dart';

class ListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Container(
          child: Text('List View Screen'),
        ),
      ),
    );
  }
}
