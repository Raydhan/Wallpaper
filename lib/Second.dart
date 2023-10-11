import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallpaper/List.dart';
import 'package:wallpaper/Third.dart';

class second extends StatefulWidget {
  int x;

  second(this.x);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  List list2 = [];

  // late int index;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (widget.x == 0) {
      list2 = list.car;
    } else if (widget.x == 1) {
      list2 = list.bike;
    } else if (widget.x == 2) {
      list2 = list.bus;
    } else if (widget.x == 3) {
      list2 = list.hel;
    } else if (widget.x == 4) {
      list2 = list.house;
    } else if (widget.x == 5) {
      list2 = list.train;
    } else if (widget.x == 6) {
      list2 = list.truck;
    } else if (widget.x == 7) {
      list2 = list.yacht;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (widget.x == 0)
            ? AnimatedTextKit(
                animatedTexts: [
                  ScaleAnimatedText(
                    'Cars',
                    textStyle: TextStyle(fontSize: 30, fontFamily: 'font2'),
                    scalingFactor: 20,
                    duration: Duration(seconds: 10),
                  ),
                ],
                isRepeatingAnimation: true,
              )
            : (widget.x == 1)
                ? AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        "Bikes",
                        textStyle: TextStyle(fontFamily: 'font3', fontSize: 40),
                        colors: [
                          Color(0xffA10100),
                          Color(0xffDA1F05),
                          Color(0xffF33C04),
                          Color(0xffFE650D),
                          Color(0xffFFC11F),
                          Color(0xffFFF75D),
                        ],
                        speed: Duration(seconds: 1),
                      ),
                    ],
                    isRepeatingAnimation: true,
                    totalRepeatCount: 50,
                    pause: Duration(seconds: 1),
                  )
                : (widget.x == 2)
                    ? AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText(
                            "Buses",
                            textStyle:
                                TextStyle(fontFamily: 'font4', fontSize: 30),
                            colors: [
                              Color(0xffA10100),
                              Color(0xffDA1F05),
                              Color(0xffF33C04),
                              Color(0xffFE650D),
                              Color(0xffFFC11F),
                              Color(0xffFFF75D),
                            ],
                            speed: Duration(seconds: 1),
                          ),
                        ],
                        isRepeatingAnimation: true,
                        totalRepeatCount: 50,
                        pause: Duration(seconds: 1),
                      )
                    : (widget.x == 3)
                        ? AnimatedTextKit(
                            animatedTexts: [
                              ColorizeAnimatedText(
                                "Helmet",
                                textStyle: TextStyle(
                                    fontFamily: 'font5', fontSize: 30),
                                colors: [
                                  Color(0xffA10100),
                                  Color(0xffDA1F05),
                                  Color(0xffF33C04),
                                  Color(0xffFE650D),
                                  Color(0xffFFC11F),
                                  Color(0xffFFF75D),
                                ],
                                speed: Duration(seconds: 1),
                              ),
                            ],
                            isRepeatingAnimation: true,
                            totalRepeatCount: 50,
                            pause: Duration(seconds: 1),
                          )
                        : (widget.x == 4)
                            ? AnimatedTextKit(
                                animatedTexts: [
                                  ColorizeAnimatedText(
                                    "Houses",
                                    textStyle: TextStyle(
                                        fontFamily: 'font1', fontSize: 30),
                                    colors: [
                                      Color(0xffA10100),
                                      Color(0xffDA1F05),
                                      Color(0xffF33C04),
                                      Color(0xffFE650D),
                                      Color(0xffFFC11F),
                                      Color(0xffFFF75D),
                                    ],
                                    speed: Duration(seconds: 1),
                                  ),
                                ],
                                isRepeatingAnimation: true,
                                totalRepeatCount: 50,
                                pause: Duration(seconds: 1),
                              )
                            : (widget.x == 5)
                                ? AnimatedTextKit(
                                    animatedTexts: [
                                      ColorizeAnimatedText(
                                        "Trains",
                                        textStyle: TextStyle(
                                            fontFamily: 'font7', fontSize: 30),
                                        colors: [
                                          Color(0xffA10100),
                                          Color(0xffDA1F05),
                                          Color(0xffF33C04),
                                          Color(0xffFE650D),
                                          Color(0xffFFC11F),
                                          Color(0xffFFF75D),
                                        ],
                                        speed: Duration(seconds: 1),
                                      ),
                                    ],
                                    isRepeatingAnimation: true,
                                    totalRepeatCount: 50,
                                    pause: Duration(seconds: 1),
                                  )
                                : (widget.x == 6)
                                    ? AnimatedTextKit(
                                        animatedTexts: [
                                          ColorizeAnimatedText(
                                            "Trucks",
                                            textStyle: TextStyle(
                                                fontFamily: 'font8',
                                                fontSize: 30),
                                            colors: [
                                              Color(0xffA10100),
                                              Color(0xffDA1F05),
                                              Color(0xffF33C04),
                                              Color(0xffFE650D),
                                              Color(0xffFFC11F),
                                              Color(0xffFFF75D),
                                            ],
                                            speed: Duration(seconds: 1),
                                          ),
                                        ],
                                        isRepeatingAnimation: true,
                                        totalRepeatCount: 50,
                                        pause: Duration(seconds: 1),
                                      )
                                    : (widget.x == 7)
                                        ? AnimatedTextKit(
                                            animatedTexts: [
                                              ColorizeAnimatedText(
                                                "Yacht",
                                                textStyle: TextStyle(
                                                    fontFamily: 'font1',
                                                    fontSize: 30),
                                                colors: [
                                                  Color(0xffA10100),
                                                  Color(0xffDA1F05),
                                                  Color(0xffF33C04),
                                                  Color(0xffFE650D),
                                                  Color(0xffFFC11F),
                                                  Color(0xffFFF75D),
                                                ],
                                                speed: Duration(seconds: 1),
                                              ),
                                            ],
                                            isRepeatingAnimation: true,
                                            totalRepeatCount: 50,
                                            pause: Duration(seconds: 1),
                                          )
                                        : null,
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("Image/fire1.jpeg"),
          ),
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 30, crossAxisSpacing: 30),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("${list2[index]}"),
                  fit: BoxFit.fill,
                ),
              ),
              child: OpenContainer(
                closedBuilder: (context, action) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("${list2[index]}"),
                      ),
                    ),
                  );
                },
                transitionDuration: Duration(seconds: 2),
                openBuilder: (context, action) {
                  return third(index, list2);
                },
              ),
            );
          },
          itemCount: list2.length,
        ),
      ),
    );
  }

}
