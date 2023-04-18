import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: Color.fromARGB(148, 238, 185, 69),
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black54,
                  size: 16,
                ),
              ),
              Text(
                'Full Strength',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: Color.fromARGB(148, 238, 185, 69),
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.notifications_active,
                  color: Colors.black54,
                  size: 16,
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              width: double.infinity,
              height: 550,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://github.com/abenkoula71/day26/blob/main/image-removebg-preview.png?raw=true'),
                      fit: BoxFit.cover)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              width: double.infinity,
              margin: EdgeInsets.only(left: 20, right: 20, top: 450),
              height: 220,
              decoration: BoxDecoration(
                  color: Color.fromARGB(161, 255, 236, 179),
                  borderRadius: BorderRadius.circular(40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rap 36',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
                      Text(
                        'Set 2/6',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black87),
                      )
                    ],
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(202, 255, 172, 64),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      '24',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Start',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        Text(
                          'Pause',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          'Stop',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
