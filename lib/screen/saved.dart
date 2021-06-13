import 'package:flutter/material.dart';

class SavedPage extends StatefulWidget {
  SavedPage({Key? key}) : super(key: key);

  @override
  _SavedPageState createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [   
        SavedBox(title: 'Black Hoodie0', discrip: 'bla bla bla dfjdojdfojdfj', price: 'N5,000.00'),
        SavedBox(title: 'Black Hoodie1', discrip: 'bla bla bla dfjdojdfojdfj', price: 'N5,000.00'),
        SavedBox(title: 'Black Hoodie2', discrip: 'bla bla bla dfjdojdfojdfj', price: 'N5,000.00'),
        SavedBox(title: 'Black Hoodie3', discrip: 'bla bla bla dfjdojdfojdfj', price: 'N5,000.00'),
        SavedBox(title: 'Black Hoodie4', discrip: 'bla bla bla dfjdojdfojdfj', price: 'N5,000.00'),
      ],
    ));
  }
}

class SavedBox extends StatelessWidget {
  final String title;
  final String discrip;
  final String price;

  SavedBox({required this.title, required this.discrip, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          children: [
            Image.asset("assets/ob.jpeg"),
            Column(
              children: [
                Text('$title', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('$discrip'),
                Text('$price'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
