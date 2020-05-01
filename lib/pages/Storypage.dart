import 'package:flutter/material.dart';
import 'package:ebook/data.dart';

class Storypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Story time 🤓'),
        centerTitle: true,
      ),
      body: Storycontent(),
    );
  }
}

class Storycontent extends StatefulWidget {
  @override
  _StorycontentState createState() => _StorycontentState();
}

class _StorycontentState extends State<Storycontent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 500,
            width: double.infinity,
            // color: Colors.blueGrey.shade100,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                Data.storypara1,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade800,
                    fontStyle: FontStyle.normal),
              ),
            ),
          ),
          Container(
            height: 500,
            width: double.infinity,
            // color: Colors.blueGrey.shade100,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                Data.storypara2,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade800,
                    fontStyle: FontStyle.normal),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
