import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:planet_app/const.dart';
import 'package:planet_app/home/view/screens/homescreen.dart';
import 'package:planet_app/mainpage/view/controller/soundcontroller.dart';
import 'package:planet_app/mainpage/view/widget/button.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../blackhole/screens/blackholescreen.dart';
import '../../../thesun/screens/sunscreen.dart';

class MainScreen extends StatelessWidget {
   MainScreen({Key? key}) : super(key: key);
  final SoundController soundController =Get.put(SoundController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/sunrise_01.gif'),
          fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
floatingActionButton:GetBuilder<SoundController>(builder: ( controller) {
  return (controller.stateplay==false)?AnimationConfiguration.staggeredList(
    position: 2,
    duration: const Duration(seconds: 2),
    child: SlideAnimation(
      horizontalOffset: 300,
      // horizontalOffset: 300,
      child: FadeInAnimation(
        child:  Card(

          elevation: 5,

          shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.circular(20)

          ),

          child: Padding(

            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),

            child: Container(

              width: 60,

              child: Row(

                children:  [

                  InkWell(
                    onTap: (){
                      controller.playaudio();
                    },
                    child: Icon(Icons.play_arrow,color: Colors.blue,size: 20,),
                  ),

                  const SizedBox(width: 5,),

                  const Text('play',style: TextStyle(

                      color: Colors.black,

                      fontSize: 14

                  ),),

                ],

              ),

            ),

          ),

        ),
      ),
    ),
  ): AnimationConfiguration.staggeredList(
    position: 0,
    duration: const Duration(seconds: 2),
    child: SlideAnimation(
      horizontalOffset: 300,
      // horizontalOffset: 300,
      child: FadeInAnimation(
        child:  Card(

          elevation: 5,

          shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.circular(20)

          ),

          child: Padding(

            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),

            child: Container(

              width: MediaQuery.of(context).size.width/2,

              child: Row(

                children:  [

                  InkWell(
                    onTap: (){
                      controller.stopaduio();
                    },
                    child: Image.asset('images/soundplay.png',height: 20,color: Colors.blue,).shimmer(

                        primaryColor: Colors.blue

                    ),
                  ),

                  const SizedBox(width: 5,),

                  const Text('Hans Zimmer - S.T.A.Y.',style: TextStyle(

                      color: Colors.black,

                      fontSize: 14

                  ),),

                ],

              ),

            ),

          ),

        ),
      ),
    ),
  );
},),
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  image:'images/e.png' ,
                  name:'Planets' ,
                  hero:'Planets' ,
                  ontap:(){
                    Get.to(()=>HomeScreen());

                  } ,
                ),
                CustomButton(
                  hero:'sun' ,
                  name:'The Sun',
                  image: 'images/my sun.png',
                  ontap:(){
                    Get.to(()=>const SunScreen());

                  } ,
                ),


              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Get.to(()=>BlackHoleScreen());

                    },
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      color: Colors.indigo.withOpacity(0.2),
                      child: SizedBox(
                        width:135,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Hero(
                                  tag: 'black hole',
                                  child: Image.asset('images/black-hole.png',height: 43,)),
                              const SizedBox(width: 5,),
                              const Text('Black Hole',style: TextStyle(
                                  color: Colors.cyanAccent
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
