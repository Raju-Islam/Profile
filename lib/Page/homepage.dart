// ignore_for_file: unused_element, unused_local_variable, sized_box_for_whitespace, non_constant_identifier_names

import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/Config/size.dart';
import 'package:ui_design/Model/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = SizeConfig.getHeight(context);
    double width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

     List <String> Catgory = [
    "Bangladesh",
    "Pakisthan",
    "India",
    "Canada",
    "America"
  ];
   
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [Text("Name")],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/person.png'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "rajubdfci@gmail.com",
                        style: TextStyle(
                            color: Colors.black45, fontSize: fontSize(15)),
                      ),
                      Text(
                        "RAJU ISLAM",
                        style: TextStyle(
                            fontSize: fontSize(20),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: height / 30,
            ),
            Card(
              elevation: 2,
              child: Container(
                width: double.infinity,
                height: height / 5,
                decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Balence",
                        style: TextStyle(
                            fontSize: fontSize(22),
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: height / 60,
                      ),
                      Text(
                        "Tk.15000",
                        style: TextStyle(
                            fontSize: fontSize(22),
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      Text(
                        "Account ID",
                        style: TextStyle(
                            fontSize: fontSize(18),
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: height / 60,
                      ),
                      Text(
                        "0000941067",
                        style: TextStyle(
                            fontSize: fontSize(22),
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height / 30,
            ),
            Card(
              child: Stack(
                children: [
                  Container(
                  height: height / 5.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade900, width: 1),
                  ),
                  child: ListView.builder(
                      itemCount: profile.length,
                      itemBuilder: (context, index) => Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Container(
                                    height: 35,
                                    width: 35,
                                    child: Image(
                                        image: AssetImage(
                                      profile[index].image,
                                    ))),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      profile[index].title.toString(),
                                      style: TextStyle(
                                          fontSize: fontSize(16),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      profile[index].subtitile,
                                      style: TextStyle(
                                          fontSize: fontSize(16),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  
                                  ],
                                ),
                              )
                            ],
                          )),
                ),
                Positioned(
                  right: 20,
                  top: 50,
                  child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                  primary: Colors.grey.shade900
                  ),
                 child: Text('Cash Out',
                 style: TextStyle(
                   fontSize: fontSize(20),
                   fontWeight: FontWeight.bold),)))
                ]
              ),
            ),
            SizedBox(height: height / 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Make to Income',
                style: TextStyle(
                    fontSize: fontSize(20), fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: height / 60,
            ),
            Container(
                height: height / 8,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: income.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: height / 12,
                      width: width / 3,
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              height: height / 11,
                              decoration: const BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                              child: Center(
                                  child: SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Image(
                                          image: AssetImage(
                                              income[index].image)))),
                            ),
                            Text(
                              income[index].sourch,
                              style: TextStyle(
                                  color: Colors.grey.shade900,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )),
            SizedBox(
              height: height / 60,
            ),
            Container(
              height: height / 20,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Catgory.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(6),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(6)),
                      child:  Padding(
                          padding:const EdgeInsets.all(5),
                          child: Text(Catgory[index],
                          style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold),))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
