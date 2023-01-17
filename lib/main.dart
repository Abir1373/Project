import 'package:flutter/material.dart';

void main() {
  runApp(HomeOne());
}

class HomeOne extends StatelessWidget {
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
                top: 323,
                left: 30,
                child: Container(
                  height: 250,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
