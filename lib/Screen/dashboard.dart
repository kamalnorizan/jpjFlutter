import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
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
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              subtitle: Text('Dashboard'),
              // trailing: Icon(Icons.home),
            ),
            const ListTile(
              leading: Icon(Icons.edit),
              title: Text('Form'),
              subtitle: Text('Registration Form'),
              // trailing: Icon(Icons.edit),
            ),
            const ListTile(
              leading: Icon(Icons.list_alt),
              title: Text('List View'),
              subtitle: Text('Widget'),
              // trailing: Icon(Icons.list),
            ),
            Divider(),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              subtitle: Text('Widget'),
              // trailing: Icon(Icons.list),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
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
              const SizedBox(
                height: 15,
              ),
              CardWithIcon(
                title: 'Total Visitors',
                value: '1056',
                cardIcon: Icons.supervised_user_circle_sharp,
              ),
              const SizedBox(
                height: 15,
              ),
              CardWithIcon(
                title: 'Customers',
                value: '730',
                cardIcon: Icons.shop,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SmallStat(
                    title: 'Downloads',
                    subtitle: 'Images, Videos',
                    iconSet: Icons.download,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SmallStat(
                    title: 'Notifications',
                    subtitle: 'All',
                    iconSet: Icons.notifications_active,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SmallStat extends StatelessWidget {
  String title;
  String subtitle;
  IconData iconSet;

  SmallStat({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconSet,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                iconSet,
                size: 80,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Text(
                subtitle,
              )
            ],
          ),
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
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
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
                      style: const TextStyle(
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
