import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.green, elevation: 23),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.orange),
        ),
      ),
      home: MyFirstPage(),
    );
  }
}

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: FlutterLogo(),
              accountName: Text('Samuel adekunle'),
              accountEmail: Text('samuelbeebest@gmail.com'),
              onDetailsPressed: () {},
              otherAccountsPicturesSize: Size.square(22.7),
              otherAccountsPictures: [FlutterLogo(), FlutterLogo()],
            ),
            _buildDrawerList(
                title: 'Dashboard',
                icon: Icons.account_balance,
                onTap: () => print('Dashboard pressed!')),
            _buildDrawerList(
                title: 'Profile',
                icon: Icons.person,
                onTap: () => print('Profile pressed!')),
            _buildDrawerList(
                title: 'Activities',
                icon: Icons.manage_accounts,
                onTap: () => print('Activities pressed!')),
            _buildDrawerList(
                title: 'My Stats',
                icon: Icons.pie_chart,
                onTap: () => print('My Stats pressed!')),
            _buildDrawerList(
                title: 'Settings',
                icon: Icons.settings,
                onTap: () => print('Settings pressed!')),
            _buildDrawerList(
                title: 'Sign Out',
                icon: Icons.logout,
                onTap: () => print('Sign Out pressed!')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Floating Action Button Pressed !!!!'),
        child: Icon(Icons.camera_alt_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello World'),
            Text(
              'Samuel is going to the market!!!!',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }

  _buildDrawerList(
      {required IconData icon,
      required String title,
      required Function() onTap}) {
    return ListTile(
      dense: true,
      onTap: onTap,
      leading: Icon(icon),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios_outlined, size: 12),
    );
  }
}
