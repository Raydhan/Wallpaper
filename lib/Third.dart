import 'dart:io';

import 'package:external_path/external_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';

class third extends StatefulWidget {
  int ind;
  List list2;

  third(this.ind, this.list2);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  late File file;
  // @override
  // Future<void> initState() async {
  //   // TODO: implement initState
  //   super.initState();
  //   int location = WallpaperManager.LOCK_SCREEN;
  //   bool result = await WallpaperManager.setWallpaperFromFile(path,location);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
          // Container(
          // height: double.infinity,
          // width: double.infinity,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     fit: BoxFit.fill,
          //     image: AssetImage("Image/fire5.jpg"),
          //   ),
          // ),
          // child:
          Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              widget.list2[widget.ind],
            ),
          ),
        ),
      ),
      floatingActionButton: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.white24),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return SimpleDialog(
                  backgroundColor: Colors.black,
                  title: Text(textAlign: TextAlign.center,
                    "Set Screen",
                    style: TextStyle(color: Colors.white),
                  ),
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white24),
                      onPressed: () {
                        getImageFileFromAssets("${widget.list2[widget.ind]}").then((value) async {
                          int location = WallpaperManager.LOCK_SCREEN; //can be Home/Lock Screen
                          bool result = await WallpaperManager.setWallpaperFromFile(value.path, location);
                          print("result=$result");

                        },);
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Lock Screen",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white24),
                      onPressed: () {
                        getImageFileFromAssets("${widget.list2[widget.ind]}").then((value) async {
                          int location = WallpaperManager.HOME_SCREEN; //can be Home/Lock Screen
                          bool result = await WallpaperManager.setWallpaperFromFile(value.path, location);
                          print("result=$result");

                        },);
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Home Screen",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white24),
                      onPressed: () {
                        getImageFileFromAssets("${widget.list2[widget.ind]}").then((value) async {
                          int location = WallpaperManager.BOTH_SCREEN; //can be Home/Lock Screen
                          bool result = await WallpaperManager.setWallpaperFromFile(value.path, location);
                          print("result=$result");

                        },);
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Lock & Home Screen",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: Text("Set Screen")),
      // ),
    );
  }
  Future<File> getImageFileFromAssets(path1) async {
    final byteData = await rootBundle.load('$path1');
    var path = await ExternalPath.getExternalStoragePublicDirectory(ExternalPath.DIRECTORY_DOWNLOADS)+"/wallpaperfolder";
    print("path=$path");
    Directory dr=Directory(path);
    if(!await dr.exists())
    {
      await dr.create();
    }
    print("dr=$dr");
    final tempfile=File("${await dr.path}/1.jpg");
    print("tempfile=$tempfile");
    file=await tempfile.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
    print("file=$file");
    return file;
  }
}
