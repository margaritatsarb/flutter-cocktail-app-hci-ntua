import 'package:flutter/material.dart';

class Androidlarge3clonedWidget extends StatefulWidget {
  @override
  _Androidlarge3clonedWidgetState createState() =>
      _Androidlarge3clonedWidgetState();
}

class _Androidlarge3clonedWidgetState extends State<Androidlarge3clonedWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Androidlarge3clonedWidget - FRAME
    return Container(
        width: 360,
        height: 800,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Androidlarge3cloned.png'),
              fit: BoxFit.fitWidth),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 59,
              left: 93,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4),
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'quiz',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Roboto',
                          fontSize: 30.33333396911621,
                          letterSpacing: 2.7083334922790527,
                          fontWeight: FontWeight.normal,
                          height: 1.1428571608227498),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 135,
              left: 89,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4),
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'TASTE:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.8700000047683716),
                          fontFamily: 'Roboto',
                          fontSize: 31.5,
                          letterSpacing: 2.8125,
                          fontWeight: FontWeight.normal,
                          height: 1.1428571428571428),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 228,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.5),
                ),
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 0),
                    SizedBox(height: 0),
                  ],
                ),
              )),
          Positioned(
              top: -10,
              left: 84,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4),
                                bottomLeft: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'cOCKTAILER',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(232, 65, 29, 1),
                                      fontFamily: 'Rock Salt',
                                      fontSize: 36,
                                      letterSpacing: 1.25,
                                      fontWeight: FontWeight.normal,
                                      height: 0.4444444444444444),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ]));
  }
}
