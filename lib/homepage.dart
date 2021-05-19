import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String name = 'Samuel';
  bool checkStatus = true;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.settings), onPressed: () => print('Icon Pressed')),
        title: Text('First Example'),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xD0D43C0E),
        actions: [
          Icon(
            Icons.ac_unit,
            color: Colors.red,
          ),
          Icon(Icons.person)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('The boy is going'),
                Text('The girl is coming'),
              ],
            ),
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  backgroundColor: Colors.purple[400],
                  fontWeight: FontWeight.w800,
                  decoration: TextDecoration.overline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(name),
            MaterialButton(
              onPressed: () {
                setState(() {
                  name = 'Adekunle Samuel.';
                });
              },
              child: Text('First Button'),
              color: Colors.green,
            ),
            Text(checkStatus ? 'Status: true' : 'Status: false'),
            checkStatus ? Text('Status: true') : Text('Status: false'),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void newFuc() {
    if (checkStatus) {}
  }
}
