import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planet_app/home/controller/homecontroller.dart';
import 'package:planet_app/home/view/screens/informationscreen.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
   final  homeController =Get.put(HomeController());
  List<String>images=[
   'images/vpng.png',
   'images/mer.png',
   'images/e.png',
   'images/ma.png',
   'images/j.png',
   'images/Saturnpng.png',
   'images/iconura.png',
   'images/nepto1.png',

  ];
  List<String>nameplante=[
    'Mercury',
    'Venus',
    'Earth',
    'Mars',
    'Jupiter',
    'Saturn',
    'Uranus',
    'Neptune ',
  ];
  List<String>iamgebackround=[
    'images/mercruy.jpg',
    'images/venus.jpg',
    'images/earth.jpg',
    'images/mars.jpg',
    'images/jupiter.jpg',
    'images/saturn.jpg',
    'images/Uranus.png',
    'images/Neptune.png',

  ];
  List<String>informationmoon=[
    'has no moon in its solar orbit',
    'has no moon in its solar orbit',
    ' has 1 moon in its solar orbit',
    'has 2 moon in its solar orbit',
    '80 (57 confirmed, 23 provisional) moon in its solar orbit',
    '83 (63 confirmed, 20 provisional) moon in its solar orbit',
    '27 moon in its solar orbit',
    'moon in its solar orbit',


  ];
   List<String>yearofplante=[
     'Length Of Year 88 EARTH DAYS',
     'Length Of Year 225 EARTH DAYS',
     'Length Of Year 365.25 DAYS',
     'Length Of Year 1.88 EARTH YEARS',
     'Length Of Year 11.86 EARTH YEARS',
     'Length Of Year 29.45 EARTH YEARS ',
     'Length Of Year 84 EARTH YEARS',
     'Length Of Year 164.81 EARTH YEARS',

   ];
   List<String>distanceplante=[
     'Distance From Sun 0.4 AU',
     'Distance From Sun 0.7 AU',
     'Distance From Sun 1 AU',
     'Distance From Sun 1.5 AU',
     'Distance From Sun 5.2 AU',
     'Distance From Sun 9.5 AU',
     'Distance From Sun 19.8 AU',
     'Distance From Sun 30.1 AU',


   ];

   @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: ( controller) {
      return Container(
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         fit: BoxFit.contain,
        //         image: AssetImage(iamgebackround[controller.index])
        //     )
        // ),

        child: Scaffold(
          floatingActionButton:  InkWell(
            onTap: (){
              Get.back();
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              color: Colors.blueGrey,
              child:const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Column(
               children: [
                 CarouselSlider.builder(
                   itemCount:images.length ,
                   options:CarouselOptions(
                     height:150,
                     viewportFraction:0.5,
                     initialPage: 0,

                     enableInfiniteScroll: true,
                     reverse: false,
                     autoPlay: true,
                     autoPlayInterval: const Duration(seconds: 5),
                     autoPlayAnimationDuration: const Duration(milliseconds: 800),
                     autoPlayCurve: Curves.fastOutSlowIn,
                     enlargeCenterPage: true,
                     onPageChanged: ( value,caursol){
                       homeController.changeindex(value);
                     },
                     scrollDirection: Axis.horizontal,
                   ),
                   itemBuilder: (BuildContext context, int indd, int realIndex) {
                     return ClipRRect(
                       borderRadius: const BorderRadius.only(
                         topLeft: Radius.circular(10),
                         bottomLeft: Radius.circular(10),
                       ),
                       child: Image.asset(images[indd],
                         fit: BoxFit.contain,
                         height: 150,
                         width: 150,

                       ),
                     );
                   },

                 ),
                 const SizedBox(height: 10,),
                 Stack(
                   alignment: Alignment.center,
                   children: [
                     Hero(
                         tag: iamgebackround[controller.index],
                         child: Image.asset(iamgebackround[controller.index])),
                     Card(
                       elevation: 5,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10)
                       ),
                       color: Colors.blueGrey.withOpacity(0.8),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(nameplante[controller.index],style: const TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: 30
                         ),).shimmer(
                             primaryColor: Colors.white70

                         ),
                       ),
                     ),



                   ],
                 ),
               ],
             ),
              MaterialButton(onPressed: (){
                Get.to(()=>InformationScreen(
                  imagesbackgorund: iamgebackround[controller.index],
                  informationmoon: informationmoon[controller.index],
                  distiance: distanceplante[controller.index],
                  Yearofplante: yearofplante[controller.index],
                  name: nameplante[controller.index],
                ));
              },
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              color: Colors.blue,
                child: const Text(' More Information',style: TextStyle(
                  color: Colors.white
                ),),
              ),

              const SizedBox(height: 10,),


            ],
          ),
        ),
      );
    },);
  }
}
