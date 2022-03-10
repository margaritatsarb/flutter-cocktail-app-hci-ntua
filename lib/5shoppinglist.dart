import 'package:flutter/material.dart';

class ShoppinglistWidget extends StatefulWidget {
  @override
  _ShoppinglistWidgetState createState() => _ShoppinglistWidgetState();
}

class _ShoppinglistWidgetState extends State<ShoppinglistWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ShoppinglistWidget - FRAME
    return Container(
        width: 360,
        height: 800,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Shoppinglist.png'),
              fit: BoxFit.fitWidth),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 833,
              left: 1858,
              child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[]))),
          Positioned(
              top: 1061,
              left: 1059,
              child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 2.636580228805542,
                        left: 2.0008866786956787,
                        child: Container(
                            width: 18.999113082885742,
                            height: 18.363452911376953,
                            child: Stack(children: <Widget>[]))),
                  ]))),
          Positioned(
              top: 5128,
              left: 333,
              child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 16,
                            height: 16,
                            child: Stack(children: <Widget>[]))),
                  ]))),
          Positioned(
              top: 61,
              left: 79,
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
                      'shopping list',
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
              top: -9,
              left: 85,
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
