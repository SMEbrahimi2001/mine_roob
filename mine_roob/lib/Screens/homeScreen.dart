import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:mine_roob/Constant/Color.dart';
import 'package:mine_roob/Constant/FontAndFontSize.dart';
import 'package:mine_roob/Constant/gifs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String routName = '/HomeScreen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final GifController _controller;
  @override
  void initState() {
    _controller = GifController(vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 106, 185, 254),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.12,
              width: size.width,
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.12,
                    padding: EdgeInsets.only(top: 10, left: 10),
                    // * create coin
                    child: Gif(
                      image: AssetImage(MyGifs.myCoinGif),
                      controller:
                          _controller, // if duration and fps is null, original gif fps will be used.
                      fps: 25,
                      // duration: const Duration(seconds: 3),
                      autostart: Autostart.loop,
                      placeholder: (context) => const Text('Loading...'),
                      onFetchCompleted: () {
                        _controller.reset();
                        _controller.forward();
                      },
                    ),
                  ),
                  SizedBox(width: size.width * 0.02),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    width: size.width * 0.2,
                    child: Text(
                      '567',
                      style: TextStyle(
                        fontFamily: MyFont.coopblFont,
                        fontSize: MyFontSize.fontSize15,
                        color: MyColor.iconColorWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    width: size.width * 0.4,
                    alignment: Alignment.center,
                    child: Text(
                      'Mine Roob',
                      style: TextStyle(
                        fontFamily: MyFont.coopblFont,
                        fontSize: MyFontSize.fontSize18,
                        fontWeight: FontWeight.bold,
                        color: MyColor.iconColorWhite,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    width: size.width * 0.25,
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
