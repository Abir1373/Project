import 'package:flutter/material.dart';

void main() {
  runApp(HomeOne());
}

class HomeOne extends StatefulWidget {
  @override
  State<HomeOne> createState() => _HomeOneState();
}

class _HomeOneState extends State<HomeOne> {
  Color oncolor = Color.fromARGB(255, 15, 79, 219);
  Color offcolor = Color.fromARGB(255, 158, 155, 155);
  Color LOGIN = Color.fromARGB(255, 158, 155, 155);
  Color SIGNUP = Color.fromARGB(255, 158, 155, 155);

  void setcolor(int val) {
    if (val == 1) {
      LOGIN = oncolor;
      SIGNUP = offcolor;
    } else if (val == 2) {
      LOGIN = offcolor;
      SIGNUP = oncolor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 330,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/img.jpg"), fit: BoxFit.fill),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
              Positioned(
                top: 280,
                left: 30,
                child: Container(
                  height: 250,
                  width: 340,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      bottom: BorderSide(color: Colors.black),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    setcolor(1);
                                  });
                                },
                                child: Text(
                                  "LOG IN",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: LOGIN,
                                  ),
                                ),
                              ),
                              Container(
                                height: 2,
                                width: 55,
                                color: LOGIN,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    setcolor(2);
                                  });
                                },
                                child: Text(
                                  "SIGN UP",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: SIGNUP,
                                  ),
                                ),
                              ),
                              Container(
                                height: 2,
                                width: 55,
                                color: SIGNUP,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 650,
                right: 0,
                left: 30,
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      child: Image.asset('images/google_icon.png'),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 95,
                      height: 95,
                      child: Image.asset('images/facebook_icon.png'),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 120,
                      height: 120,
                      child: Image.asset('images/gmail_icon.jpeg'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
