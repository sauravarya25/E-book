import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:ebook/pages/Storypage.dart';
import 'package:ebook/pages/moreinfopage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: SafeArea(
        child: Column(
          children: <Widget>[
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
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Harry Potter',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.grey.shade800),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Expanded(
                          child: StarRating(
                            starCount: 5,
                            rating: 4.5,
                            color: Colors.yellow.shade800,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Harry Potter and the Half Blood Prince',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 10.0,
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          'Urban Fantasy',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 10.0,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Text("""
Harry Potter and the Half-Blood Prince is the sixth novel in J. K. Rowling's Harry Potter series. Set during Harry Potter's sixth year at Hogwarts, Lord Voldemort is definitely back, and with a vengeance. Harry finds his world is yet again changing: wizards and witches and Muggles alike are dying, despite the efforts of the Ministry of Magic and the Order of the Phoenix."""),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: <Widget>[
                        //button 1
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: Material(
                            type: MaterialType.button,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.cyan.shade200,
                            elevation: 10,
                            child: MaterialButton(
                              child: Text('Read Book'),
                              enableFeedback: true,
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Storypage(),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        //button 2
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: Material(
                            type: MaterialType.button,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.grey.shade200,
                            elevation: 10,
                            child: MaterialButton(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Moreinfo(),
                                ),
                              ),
                              child: Text('More info'),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
