import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  NewScreen({Key? key}) : super(key: key);

  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: Icon(Icons.add),
                  applicationName: 'Testing App',
                  applicationVersion: 'v1.0.0',
                  applicationLegalese:
                      'nothing is fucking herere eurisdjisd ij sammy',
                );
              },
              child: Text('ShowAboutDialog Button'),
              color: Colors.yellow,
            ),
            MaterialButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  builder: (context, child) {
                    return Text('');
                  },
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2023),
                );
              },
              child: Text('showDatePicker Button'),
              color: Colors.green,
            ),
            MaterialButton(
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) {
                      return AlertDialog(
                        title: Center(child: Text('Quick Update')),
                        content: Text(
                            'Helo samuel isd sid sjfsudfhusdf sdhasdiad sdjsisbsfbdfiweds fsfisfhisfisfisfns fsfishsfhisfisfnsfhis fsifsi'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('cancel'),
                          ),
                          TextButton(onPressed: () {}, child: Text('proceed')),
                        ],
                      );
                    });
              },
              child: Text('showDialog Button'),
              color: Colors.orange,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('Navigator'),
              color: Colors.purple,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('Navigator'),
              color: Colors.green,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('Navigator'),
              color: Colors.green,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('Navigator'),
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
