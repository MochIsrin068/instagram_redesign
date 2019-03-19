import 'package:flutter/material.dart';

class History extends StatelessWidget {
  String _imagePath;

  History(this._imagePath);

  double _height = 50.0;
  double _width = 50.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      width: _width,
      child: InkWell(
        child: Container(
          padding: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_height / 2),
              gradient: LinearGradient(
                colors: [Colors.orange, Colors.pink],
              )),
          child: CircleAvatar(
            backgroundImage: AssetImage(_imagePath),
            radius: _height / 2,
          ),
        ),
      ),
    );
  }
}

class History2 extends StatelessWidget {
  String _imagePath;

  History2(this._imagePath);

  double _height = 25.0;
  double _width = 25.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      width: _width,
      child: InkWell(
        child: Container(
          padding: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_height / 2),
              color: Colors.white),
          child: CircleAvatar(
            backgroundImage: AssetImage(_imagePath),
            radius: _height / 2,
          ),
        ),
      ),
    );
  }
}

class Desc extends StatelessWidget {
  String _title;
  String _desc;

  Desc(this._title, this._desc);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(_title,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            )),
        Text(_desc,
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }
}

class Comment extends StatelessWidget {
  String _name;
  String _comment;
  String _time;
  String _profile;

  Comment(this._name, this._comment, this._time, this._profile);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.0,
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          History2(_profile),
          SizedBox(
            width: 15.0,
          ),
          Column(
            children: <Widget>[
              SizedBox(height: _time == '' ? 10.0 : 0.0),
              Text(_name,
                  textAlign: TextAlign.left,
                  style:
                      TextStyle(fontFamily: 'Montserrat', color: Colors.grey)),
              Text(_comment,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0)),
              Text(_time,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                      fontSize: _time != '' ? 10.0 : 0.0)),
            ],
          ),
          Expanded(
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.favorite_border,
                    size: 15.0,
                  )))
        ],
      ),
    );
  }
}
