import 'package:flutter/cupertino.dart';
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
                          'Helo samuel isd sid sjfsudfhusdf sdhasdiad sdjsisbsfbdfiweds fsfisfhisfisfisfns fsfishsfhisfisfnsfhis fsifsi',
                        ),
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
              onPressed: () {
                showGeneralDialog(
                    context: context,
                    pageBuilder: (context, Animation<double> dex1,
                        Animation<double> dex2) {
                      return Container(
                        height: 300,
                        color: Colors.white,
                      );
                    });
              },
              child: Text('showGeneralDialog Button'),
              color: Colors.purple,
            ),
            MaterialButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset('assets/ob.jpeg', fit: BoxFit.cover),
                              SizedBox(height: 35),
                              Text(
                                'Helo samuel isd sid sjfsudfhusdf sdhasdiad sdjsisbsfbdfiweds fsfisfhisfisfisfns fsfishsfhisfisfnsfhis fsifsi',
                                style: TextStyle(color: Colors.black),
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
                    });
              },
              child: Text('showDialog Button'),
              color: Colors.green,
            ),
            MaterialButton(
              onPressed: () {
                showLicensePage(
                    context: context, applicationName: 'Testing App');
              },
              child: Text('showLicensePage Button'),
              color: Colors.red,
            ),
            MaterialButton(
              onPressed: () {
                showMenu(
                  context: context,
                  position: RelativeRect.fromRect(
                    Rect.fromLTRB(34, 44, 23, 12),
                    Rect.fromPoints(Offset.infinite, Offset.zero),
                  ),
                  items: [
                    PopupMenuItem<int>(
                      value: 0,
                      child: Text('Working a lot harder'),
                    ),
                    PopupMenuItem<int>(
                      value: 1,
                      child: Text('Working a lot less'),
                    ),
                    PopupMenuItem<int>(
                      value: 1,
                      child: Text('Working a lot smarter'),
                    ),
                  ],
                );
              },
              child: Text('Navigator'),
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
