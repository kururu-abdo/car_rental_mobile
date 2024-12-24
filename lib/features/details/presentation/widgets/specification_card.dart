import 'package:car_rentals/utils/sizes.dart';
import 'package:flutter/material.dart';

class SpecificationCard extends StatelessWidget {
  final String? image;
  final String? data;
  final String? label;
  const SpecificationCard({super.key, this.image, this.data, this.label});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: getFullWidth(context)*.30,
      height: 120, 
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white, 
           boxShadow: [
          BoxShadow(
            blurRadius: 20 , 
            

            spreadRadius: 5,
            offset: Offset(-1, -1), 

            color: Colors.black45.withAlpha(50)

          )],
        borderRadius: BorderRadius
        .circular(20)
      ), 

      child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
Image.asset(image! , 
width: 30,height: 30,
color: Theme.of(context).primaryColor,
), 


Text(data.toString() , 

style: TextStyle(
  fontWeight: FontWeight.bold, fontSize: 15
),), 
Text(label.toString() , 

style: TextStyle(
  color: Colors.grey[500], fontSize: 12
),), 

        ],
      ),
      );
  }
}