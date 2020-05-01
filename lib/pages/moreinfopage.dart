import 'package:ebook/data.dart';
import 'package:flutter/material.dart';

class Moreinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More Info ℹ'),
        centerTitle: true,
      ),
      body: Bookinfo(),
    );
  }
}

class Bookinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 30,
                  offset: Offset(2, 15),
                ),
              ],
              image: DecorationImage(
                  image: AssetImage('images/book3.png'), fit: BoxFit.contain),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Harry Potter',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.grey.shade800),
          ),
          Text(
            'Harry Potter and the Half Blood Prince',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 10.0,
                decoration: TextDecoration.underline),
          ),
          SizedBox(
            height: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Author:JK Rowling ',
                style: kdecorationtext,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Cover artist:Jason Cockcroft \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tJonny Duddle  \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tMary GrandPré \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Kazu Kibuishi \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tOlly Moss',
                style: kdecorationtext,
              ),
              Text(
                'Interior artist :Mary GrandPré',
                style: kdecorationtext,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Release date :16 July, 2005',
                style: kdecorationtext,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Publisher:Bloomsbury (UK, Canada)',
                style: kdecorationtext,
              ),
              SizedBox(
                height: 5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
