import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class InformationScreen extends StatelessWidget {
   String? informationmoon;
String? imagesbackgorund;
String? Yearofplante;
String? distiance;
String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

      ),
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
                tag: imagesbackgorund.toString(),
                child: Image.asset(imagesbackgorund.toString())),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Card(
                color: Colors.blueGrey.withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(name.toString(),
                    style:const TextStyle(
                        color: Colors.white,
                      fontSize: 28
                    ),
                  ).shimmer(
                      primaryColor: Colors.blue

                  ),
                ),
              ),
            ),

            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Card(
                color: Colors.blueGrey.withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(children: [
                        Image.asset('images/moonicon.png',height: 40,),

                        const SizedBox(width: 10,),
                        Expanded(
                          child: Text(informationmoon.toString(),
                            style:const TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ),
                      ],),


                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Card(
                color: Colors.blueGrey.withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(children: [
                        Image.asset('images/ageofplanet.png',height: 40,),
                        const SizedBox(width: 10,),
                         Expanded(
                          child: Text(Yearofplante.toString(),
                            style:const TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ),
                      ],),


                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Card(
                color: Colors.blueGrey.withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [

                      Row(children: [
                        Image.asset('images/astronomical.png',height: 40,),

                        const SizedBox(width: 10,),
                        Expanded(
                          child: Text(distiance.toString(),
                            style:const TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ),
                      ],),


                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Card(
                color: Colors.blueGrey.withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const  Text('1 AU is equal to about 150 million kilometers (93 million miles)',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

   InformationScreen({
    this.informationmoon,
    this.imagesbackgorund,
    this.name,
    this.distiance,
    this.Yearofplante,
  });
}
