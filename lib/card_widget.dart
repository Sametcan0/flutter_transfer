import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  int number = 56546;
  int number2 = 9673;
  int money = 6500000;
  int money2 = 321200000;

  //const CardWidget({Key key, this.number, this.money}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
      ),
      margin: EdgeInsets.all(30),
      height: 230,
      width: MediaQuery.of(context).size.width,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: InkWell(
              onTap: (){},
              child: Container(
                height: 10,
                width: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff881fdc),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    Row(
                      children: [
                        SizedBox(width: 50),
                        Text(
                          "* * * * * * * * * *",
                          style: TextStyle(
                            fontFamily: 'Transferfont',
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Text(
                            number.toString(),
                          style: TextStyle(
                            fontFamily: 'Transferfont',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 50,),
                        Text(
                          "Master Card",
                          style: TextStyle(
                            fontFamily: 'Transferfont',
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 50,),
                        Text(
                          "\$ "+money.toString(),
                          style: TextStyle(
                            fontFamily: 'Transferfont',
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 100,),
                        Stack(
                          children: [
                            Positioned(
                              left: 5,
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(200.0),
                                    color: Color(0xffc293ed),
                                  ),
                                ),
                            ),
                            Positioned(
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(200.0),
                                    color: Color(0xfff8b23e),
                                  ),
                                ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Container(
              height: 10,
              width: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xff60b7fc),
              ),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Row(
                    children: [
                      SizedBox(width: 50),
                      Text(
                        "* * * * * * * * * *",
                        style: TextStyle(
                          fontFamily: 'Transferfont',
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        number2.toString(),
                        style: TextStyle(
                          fontFamily: 'Transferfont',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 50,),
                      Text(
                        "Master Card",
                        style: TextStyle(
                          fontFamily: 'Transferfont',
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 50,),
                      Text(
                        "\$ "+money2.toString(),
                        style: TextStyle(
                          fontFamily: 'Transferfont',
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 80,),
                      Stack(
                        children: [
                          Positioned(
                            left: 10,
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200.0),
                                color: Color(0xffc293ed),
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200.0),
                                color: Color(0xfff8b23e),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


