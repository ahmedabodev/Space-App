import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:planet_app/const.dart';
import 'package:planet_app/mainpage/view/controller/soundcontroller.dart';
import 'package:planet_app/mainpage/view/screens/mainscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SoundController soundController =Get.put(SoundController());
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3)).then((value) {
      Get.to(()=>MainScreen());
      soundController.playaudio();
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/cover.jpg'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
