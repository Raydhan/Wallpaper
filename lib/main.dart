import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wallpaper/List.dart';
import 'package:wallpaper/Second.dart';

void main() {
  runApp(
    MaterialApp(
      home: start(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class start extends StatefulWidget {
  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  String home = "Home Screen",
      lock = "Lock Screen",
      both = "Both Screen",
      system = "System";

  bool downloading = false;

  var result = "Waiting to set wallpaper";
  bool _isDisable = true;

  int nextImageID = 0;
  permition() async {
    var status = await Permission.storage.status;
    if (status.isDenied) {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.storage,
      ].request();
      //print(statuses[Permission.location]);
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    permition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedTextKit(
          animatedTexts: [
            // TypewriterAnimatedText(
            //   'Wallpaper',
            //   textStyle: TextStyle(fontSize: 30,fontFamily: 'font1'),
            //   speed: Duration(milliseconds: 100),
            // ),
            // FadeAnimatedText(
            //   'Wallpaper',
            //   textStyle: TextStyle(fontSize: 30,fontFamily: 'font1'),
            //   duration: Duration(seconds: 3),
            //   fadeInEnd: 1,
            //   fadeOutBegin: 3
            // ),
            // ScaleAnimatedText(
            //   'Wallpaper',
            //   textStyle: TextStyle(fontSize: 30,fontFamily: 'font1'),
            //   scalingFactor: 20,
            //   duration: Duration(seconds: 10),
            // ),
            // RotateAnimatedText("Wallpaper"),
            // FadeAnimatedText("Wallpaper"),
            // TyperAnimatedText("Wallpaper")
            ColorizeAnimatedText("Wallpaper", textStyle: TextStyle(fontFamily: 'font1',fontSize: 30), colors: [
              Color(0xffA10100),
              Color(0xffDA1F05),
              Color(0xffF33C04),
              Color(0xffFE650D),
              Color(0xffFFC11F),
              Color(0xffFFF75D),
            ],speed: Duration(seconds: 1),),
            // WavyAnimatedText('Wallpaper'),
            // FlickerAnimatedText('Wallpaper')
          ],
          isRepeatingAnimation: true,
          totalRepeatCount: 50,
          pause: Duration(seconds: 1),
        ),
        // GradientText(gradientDirection: GradientDirection.btt,
        //   'Wallpaper',
        //   colors: [
        //     Color(0xffA10100),
        //     Color(0xffDA1F05),
        //     Color(0xffF33C04),
        //     Color(0xffFE650D),
        //     Color(0xffFFC11F),
        //     Color(0xffFFF75D),
        //   ],
        //   style: TextStyle(fontFamily: 'font1', fontSize: 30),
        // ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("Image/fire_bird.jpg"),
        )),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 30, mainAxisSpacing: 30),
          itemBuilder: (context, index) {
            return OpenContainer(
              closedBuilder: (context, action) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        list.first[index],
                      ),
                    ),
                  ),
                );
              },
              openBuilder: (context, action) {
                return second(index);
              },
              transitionDuration: Duration(seconds: 2),
              middleColor: Colors.black,
              transitionType: ContainerTransitionType.fadeThrough,
            );
          },
          itemCount: list.first.length,
        ),
      ),
    );
  }
}
