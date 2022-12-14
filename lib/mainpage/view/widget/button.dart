import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   var ontap;
var image;
var name;
var hero;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap:ontap,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          color: Colors.indigo.withOpacity(0.2),
          child: SizedBox(
            width:120,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Hero(
                      tag: hero,
                      child: Image.asset(image,height: 43,)),
                  const SizedBox(width: 5,),
                   Text(name,style:const TextStyle(
                      color: Colors.cyanAccent
                  ),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

   CustomButton({
    required this.ontap,
    required this.image,
    required this.name,
    required this.hero,
  });
}
