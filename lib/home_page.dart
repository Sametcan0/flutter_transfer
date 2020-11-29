import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_moneymobile/card_widget.dart';
import 'package:flutter_app_moneymobile/detail_page2.dart';

import 'detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f6fd),
      body: Stack(
        children: [
          Positioned(
            bottom: 500,left: 200,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Color(0xfff0eff6),
                ),
              ),
          ),
          Positioned(
            top: 500,right: 200,
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Color(0xfff0eff6),
              ),
            ),
          ),
          Positioned(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 100),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      IconButton(
                          icon: Icon(Icons.arrow_back_ios_outlined),
                          onPressed: (){}
                          ),
                      SizedBox(width: 90),
                      Text(
                          "Transfer",
                          style: TextStyle(
                            fontFamily: 'Transferfont',
                            fontSize: 18,
                              color: Color(0xff706b9f)
                          ),
                      ),
                      SizedBox(width: 90),
                      IconButton(
                          icon: Icon(Icons.more_horiz_outlined),
                          onPressed: (){}
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  CardWidget(),
                ],
              ),
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.1,
              maxChildSize: 0.5,
              minChildSize: 0.1,
              builder: (BuildContext context, ScrollController scrollController){
                return Container(
                  /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),*/
                  color: Colors.white,
                  child: ListView(
                    controller: scrollController,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 30),
                              Text(
                                  "Transactions",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Transferfont',
                                      color: Color(0xff706b9f),
                                  ),
                              ),
                              SizedBox(width: 45,),
                              Container(
                                height: 12,
                                width: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey.shade200,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          // first character**************************************************
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage()));
                            },
                            child: Container(
                              height: 100.0,
                              width: 400.0,
                              child: Row(
                                children: [
                                  SizedBox(width: 30),
                                  Container(
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/model1.jpeg'),
                                          fit: BoxFit.cover
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30),
                                  Container(
                                    height: 50,
                                    width: 100,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Asuman",
                                          style: TextStyle(
                                            fontFamily: 'Transferfont',
                                            color: Color(0xff706b9f),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Sent",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Transferfont',
                                            color: Color(0xffeae8f3),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 60,),
                                  Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Color(0xffffebf0),
                                        ),
                                        height: 30,
                                        width: 70,
                                      ),
                                      Positioned(
                                        top: 3.5,
                                        left: 5,
                                        child: Container(
                                          height: 23,
                                          width: 23,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(200.0),
                                            color: Colors.white,
                                          ),
                                          child: Icon(Icons.arrow_upward,color: Color(0xffffebf0)),
                                        ),
                                      ),
                                      Positioned(
                                        top: 7,
                                        right: 10,
                                        child: Text(
                                          "\$53",
                                          style: TextStyle(
                                            color: Colors.pinkAccent,
                                            fontFamily: 'Transferfont',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Second character*******************************************************
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPageTwo()));
                            },
                            child: Container(
                              height: 100,
                              width: 400,
                              child: Row(
                                children: [
                                  SizedBox(width: 30),
                                  Container(
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/model3.jpeg'),
                                          fit: BoxFit.cover
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30),
                                  Container(
                                    height: 50,
                                    width: 100,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sema",
                                          style: TextStyle(
                                            fontFamily: 'Transferfont',
                                            color: Color(0xff706b9f),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Received",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Transferfont',
                                            color: Color(0xffeae8f3),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 60,),
                                  Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Color(0xfff2e5fb),
                                        ),
                                        height: 30,
                                        width: 70,
                                      ),
                                      Positioned(
                                        top: 3.5,
                                        left: 5,
                                        child: Container(
                                          height: 23,
                                          width: 23,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(200.0),
                                            color: Colors.white,
                                          ),
                                          child: Icon(Icons.arrow_downward,color: Color(0xffffebf0)),
                                        ),
                                      ),
                                      Positioned(
                                        top: 7,
                                        right: 10,
                                        child: Text(
                                          "\$93",
                                          style: TextStyle(
                                            color: Color(0xff881fdc),
                                            fontFamily: 'Transferfont',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // third character**********************************************
                          InkWell(
                            onTap: (){

                            },
                            child: Container(
                              height: 100,
                              width: 400,
                              child: Row(
                                children: [
                                  SizedBox(width: 30),
                                  Container(
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/person2.jpg'),
                                          fit: BoxFit.cover
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30),
                                  Container(
                                    height: 50,
                                    width: 100,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Vakkas",
                                          style: TextStyle(
                                            fontFamily: 'Transferfont',
                                            color: Color(0xff706b9f),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Received",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Transferfont',
                                            color: Color(0xffeae8f3),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 60,),
                                  Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Color(0xfff2e5fb),
                                        ),
                                        height: 30,
                                        width: 70,
                                      ),
                                      Positioned(
                                        top: 3.5,
                                        left: 5,
                                        child: Container(
                                          height: 23,
                                          width: 23,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(200.0),
                                            color: Colors.white,
                                          ),
                                          child: Icon(Icons.arrow_downward,color: Color(0xffffebf0)),
                                        ),
                                      ),
                                      Positioned(
                                        top: 7,
                                        right: 10,
                                        child: Text(
                                          "\$93",
                                          style: TextStyle(
                                            color: Color(0xff881fdc),
                                            fontFamily: 'Transferfont',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // fourth character*******************************************************
                          InkWell(
                            onTap: (){

                            },
                            child: Container(
                              height: 100,
                              width: 400,
                              child: Row(
                                children: [
                                  SizedBox(width: 30),
                                  Container(
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/person1.jpg'),
                                          fit: BoxFit.cover
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30),
                                  Container(
                                    height: 50,
                                    width: 100,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Alevli Kacı",
                                          style: TextStyle(
                                            fontFamily: 'Transferfont',
                                            color: Color(0xff706b9f),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Received",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Transferfont',
                                            color: Color(0xffeae8f3),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 60,),
                                  Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Color(0xfff2e5fb),
                                        ),
                                        height: 30,
                                        width: 70,
                                      ),
                                      Positioned(
                                        top: 3.5,
                                        left: 5,
                                        child: Container(
                                          height: 23,
                                          width: 23,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(200.0),
                                            color: Colors.white,
                                          ),
                                          child: Icon(Icons.arrow_downward,color: Color(0xffffebf0)),
                                        ),
                                      ),
                                      Positioned(
                                        top: 7,
                                        right: 10,
                                        child: Text(
                                          "\$93",
                                          style: TextStyle(
                                            color: Color(0xff881fdc),
                                            fontFamily: 'Transferfont',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }
          ),
        ],
      ),
    );
  }
}

