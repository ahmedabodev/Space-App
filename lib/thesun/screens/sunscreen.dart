import 'package:flutter/material.dart';

class SunScreen extends StatelessWidget {
  const SunScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

          elevation: 0,
          backgroundColor: Colors.transparent,

      ),
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children:  [
     Hero(
         tag: 'sun',
         child: Image.asset('images/sun.jpg'))  ,
            const Center(
              child:  Text('The Sun',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Colors.white ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children:const [

                    Text('The sun lies at the heart of the solar system, where it is by far the largest object. It holds 99.8% of the solar systems mass and is roughly 109 times the diameter of the Earth — about one million Earths could fit inside the sun.   ',style: TextStyle(fontSize:20,color: Colors.white ),),
                    SizedBox(height:20 ,),
                    Text('The surface of the sun is about 10,000 degrees Fahrenheit (5,500 degrees Celsius) hot, while temperatures in the core reach more than 27 million F (15 million C), driven by nuclear reactions. One would need to explode 100 billion tons of dynamite every second to match the energy produced by the sun, according to NASA.',style: TextStyle(fontSize:20,color: Colors.white  ),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
