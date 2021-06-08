import 'package:first_example/screen/screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SecondScreen(),
              ));
        },
        child: Icon(Icons.camera_alt_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hello World'),
                GestureDetector(
                  child: Text(
                    'Samuel is going to the market!!!! New test',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.zcoolKuaiLe(color: Colors.blue),
                  ),
                ),
                SizedBox(height: 10),
                // Text.rich
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Samuel is',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: ' going to the market',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: '!!!! New test',
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                CupertinoTextField(),
                SizedBox(height: 10),
                Image(
                  image: AssetImage('assets/ob.jpeg'),
                ),
                SizedBox(height: 10),
                Image(
                  image: NetworkImage(
                      'https://cloud.obounce.net/media_library/60a2642ccd0af2.31430873.jpeg'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
