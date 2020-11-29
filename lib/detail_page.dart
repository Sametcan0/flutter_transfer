import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
                      SizedBox(width: 20.0),
                      IconButton(
                          icon: Icon(Icons.arrow_back_ios_outlined),
                          onPressed: (){
                            Navigator.pop(context);
                          }
                      ),
                      SizedBox(width: 250.0),
                      IconButton(
                          icon: Icon(Icons.qr_code_scanner),
                          onPressed: (){}
                      ),
                    ],
                  ),
                  SizedBox(height: 75.0),
                  Stack(
                    children: [
                      Container(
                        height: 130.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          image: DecorationImage(
                            image: AssetImage('assets/images/model1.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 96,
                        left: 33,
                          child: Container(
                            height: 35,
                            width: 65,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.white,
                            ),
                          ),
                      ),
                      Positioned(
                        top: 101,
                        left: 59,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Color(0xffc293ed),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 101,
                        left: 44,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Color(0xfff8b23e),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text(
                      "Asuman",
                    style: TextStyle(
                      fontFamily: 'Transferfont',
                      color: Color(0xff706b9f),
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 376,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 50,),
                        Text(
                            "\$53",
                          style: TextStyle(
                            fontFamily: 'Transferfont',
                            color: Color(0xff706b9f),
                            fontSize: 50,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 130,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.shade100,
                          ),
                          child: Center(
                            child: Text(
                                "Bro aing rek mayar zart zurt",
                              style:TextStyle(
                                fontFamily: 'Transferfont',
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 70,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xff881fdc),
                          ),
                          child: Center(
                            child: Text(
                              "Send money",
                              style:TextStyle(
                                fontFamily: 'Transferfont',
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
