import 'package:first_example/screen/downloads.dart';
import 'package:first_example/screen/home.dart';
import 'package:first_example/screen/profile.dart';
import 'package:first_example/screen/saved.dart';
import 'package:google_fonts/google_fonts.dart';
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
        appBarTheme: AppBarTheme(
            textTheme: GoogleFonts.poppinsTextTheme(
          TextTheme(
            headline6:
                GoogleFonts.poppins(fontSize: 25, color: Colors.white),
          ),
        )),
        textTheme: GoogleFonts.lobsterTextTheme(
          TextTheme(
            bodyText2: GoogleFonts.dancingScript(color: Colors.black),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MyFirstPage(),
    );
  }
}

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  int _currentIndex = 0;

  List<Widget> _widgetList = [
    HomePage(),
    SavedPage(),
    DownloadPage(),
    ProfilePage(),
  ];

  List<String> _appBartitle = [
    'Homepage',
    'Saved',
    'Download',
    'My profile',
  ];

  List<Color> _appBarColor = [
    Colors.green,
    Colors.blue,
    Colors.amber,
    Colors.pink
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _appBarColor[_currentIndex],
        title: Text(_appBartitle[_currentIndex]),
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
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
        selectedIconTheme: IconThemeData(color: _appBarColor[_currentIndex]),
        unselectedLabelStyle: TextStyle(color: Colors.grey[400]),
        selectedLabelStyle:
            GoogleFonts.mateSc(color: _appBarColor[_currentIndex]),
        fixedColor: Colors.green,
        
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.save_alt), label: 'Saved'),
          BottomNavigationBarItem(
              icon: Icon(Icons.download), label: 'Downloads'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: _widgetList[_currentIndex],
    );
  }

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
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
