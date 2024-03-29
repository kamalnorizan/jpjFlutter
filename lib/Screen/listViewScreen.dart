import 'dart:convert';

import 'package:dashboard/Model/stateStats.dart';
import 'package:flutter/material.dart';

import '../Model/network.dart';
import '../Widgets/customDrawer.dart';

class ListViewScreen extends StatefulWidget {
  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List names = ['Zainal', 'Amir', 'Kamarul', 'Shafiq', 'Diana', 'Siti'];
  late StatesStats stateStats;
  List<Data> senaraiData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadStats();
  }

  loadStats() async {
    var url =
        'https://datausa.io/api/data?drilldowns=State&measures=Population&year=2020';
    var res = await Network().getData(url);

    var body = jsonDecode(res.body);
    stateStats = StatesStats.fromJson(body);
    setState(() {
      senaraiData = stateStats.data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        drawer: CustomDrawer(),
        body: senaraiData.isEmpty
            ? Center(child: const CircularProgressIndicator())
            : ListView.builder(
                itemCount: senaraiData.length,
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    leading: Icon(Icons.supervised_user_circle),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text(
                      senaraiData[index].state.toString(),
                    ),
                    subtitle:Text(
                      senaraiData[index].population.toString(),
                    ),
                  );
                },
              ));
  }
}
