import 'package:first_example/model/downloads_model.dart';
import 'package:flutter/material.dart';

class DownloadPage extends StatelessWidget {
  DownloadPage({Key? key}) : super(key: key);
  final items = DownloadsModel.getDownlodas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DownloadDetails(item: items[index]),
                ),
              );
            },
            child: DownloadBox(item: items[index]),
          );
        },
      ),
    );
  }
}

class DownloadDetails extends StatelessWidget {
  DownloadDetails({Key? key, required this.item}) : super(key: key);
  final DownloadsModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.item.name),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(this.item.img),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        this.item.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(this.item.description),
                      Text('Price: ' + this.item.name.toString()),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DownloadBox extends StatelessWidget {
  const DownloadBox({Key? key, required this.item}) : super(key: key);
  final DownloadsModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(this.item.img),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      this.item.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.item.description),
                    Text('Price: ' + this.item.name.toString()),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
