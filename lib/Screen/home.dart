import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Color color1 = Colors.red;
  Color color2 = Colors.blue;
  Color color3 = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
        actions: [InkWell(onTap:(){
          setState(() {
            color1 = Colors.red;
            color2 = Colors.blue;
            color3 = Colors.green;
          });
        }, child: Icon(Icons.refresh))],
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: InkWell(
                  onTap: (){
                    setState(() {
                      color1 = Colors.red;
                      color2 = Colors.red;
                      color3 = Colors.red;
                    });
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: color1,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (){
                    setState(() {
                      color1 = Colors.blue;
                      color2 = Colors.blue;
                      color3 = Colors.blue;
                    });
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: color2,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (){
                    setState(() {
                      color1 = Colors.green;
                      color2 = Colors.green;
                      color3 = Colors.green;
                    });
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: color3,
                    ),
                  ),
                ),
              ),

              // Text('Hello World'),
              // Text('I\'m new in Flutter'),
              // Text('Flutter is the best'),
            ],
          ),
        ),
      ),
    );
  }
}
