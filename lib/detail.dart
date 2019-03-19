import 'package:flutter/material.dart';
import './data.dart';

class Detail extends StatelessWidget {
  String _like;
  String _komen;
  String _imgPath;

  Detail(this._imgPath, this._like, this._komen);

  @override
  Widget build(BuildContext context) {
    final _comment = Container(
        child:
            ListView(physics: PageScrollPhysics(), shrinkWrap: true, children: <
                Widget>[
      Comment('Marrie Doe', 'Very Good', '', 'assets/usrbig6.jpg'),
      Divider(),
      Comment('Alex Doe', 'Like This', '3 likes - reply', 'assets/usrbig3.jpg'),
      Divider(),
      Comment('Jack Doe', 'Very Good', '8 likes - reply', 'assets/usrbig5.jpg'),
      Divider(),
      Comment('Anne Doe', 'Very Good', '', 'assets/usrbig6.jpg'),
      Divider(),
      Comment('John Doe', 'Thank You', '1 likes - reply', 'assets/usrbig4.jpg'),
    ]));

    return Scaffold(
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              // width: MediaQuery.of(context).size.width,
              height: 380.0,
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  image: DecorationImage(
                      image: AssetImage(_imgPath), fit: BoxFit.cover)),
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    History2('assets/usrbig4.jpg'),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Material(
                  color: Colors.transparent,
                  elevation: 50.0,
                  shadowColor: Colors.white,
                  child: Container(
                    // width: 200.0,
                    margin: EdgeInsets.only(left: 15.0, right: 15.0),
                    height: 250.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: AssetImage(_imgPath), fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.favorite_border),
                      SizedBox(width: 5.0),
                      Text(
                        _like,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Icon(Icons.chat_bubble_outline),
                      SizedBox(width: 5.0),
                      Text(
                        _komen,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.bookmark_border)))
                    ],
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 10.0,
            ),
            _comment,
            SizedBox(
              height: 15.0,
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 55.0,
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.orange, Colors.pink]),
            borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 25.0,
              width: 25.0,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/usrbig5.jpg'),
                radius: 25.0,
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Flexible(
              child: TextField(
                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintText: 'Add A Comment',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(bottom: 6.0),
                    hintStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
