import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CardWithIcon(
              title: 'Total Views',
              value: '265',
              cardIcon: Icons.remove_red_eye,
            ),
            SizedBox(
              height: 15,
            ),
            CardWithIcon(
              title: 'Total Visitors',
              value: '1056',
              cardIcon: Icons.supervised_user_circle_sharp,
            ),
            SizedBox(
              height: 15,
            ),
            CardWithIcon(
              title: 'Customers',
              value: '730',
              cardIcon: Icons.shop,
            ),
          ],
        ),
      ),
    );
  }
}

class CardWithIcon extends StatelessWidget {
  String title;
  String value;
  IconData cardIcon;

  CardWithIcon(
      {super.key,
      required this.title,
        required this.value,
        required this.cardIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 120,
      child: Card(
        color: Colors.white,
        elevation: 8,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title),
                    Text(
                      value,
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(cardIcon, size: 80),
            ],
          ),
        ),
      ),
    );
  }
}
