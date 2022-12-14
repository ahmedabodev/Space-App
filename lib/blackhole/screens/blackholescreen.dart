import 'package:flutter/material.dart';

class BlackHoleScreen extends StatelessWidget {
  const BlackHoleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(

        child: Column(
          children: [
            Hero(
                tag: 'black hole',
                child: Image.asset('images/blackhole.jpg')),
            const SizedBox(height: 10,),
            const Text(
              ' Black Hole',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.blueGrey,
           elevation: 5,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(10),
           ),
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
                 children: const[
                   SizedBox(
                     height: 20,
                   ),
                   Text(
                     'A black hole is a region of spacetime where gravity is so strong that nothing—no particles or even electromagnetic radiation such as light—can escape from it.',
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.white
                     ),
                   ),

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
