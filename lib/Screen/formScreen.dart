import 'package:flutter/material.dart';

import '../Widgets/customDrawer.dart';

class FormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Container(
          child: Text('Form Screen'),
        ),
      ),
    );
  }
}
