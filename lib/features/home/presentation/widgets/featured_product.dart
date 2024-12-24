import 'package:car_rentals/features/details/presentation/screens/car_details_screen.dart';
import 'package:car_rentals/utils/sizes.dart';
import 'package:flutter/material.dart';

class FeaturedProduct extends StatelessWidget {
  final String? category;
  final String? model;
  final double rating;
  final String? image;
  final double? price;
  final String? rentDuration;
  const FeaturedProduct({super.key, this.category, this.model, required this.rating, this.image, this.price, this.rentDuration});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getFullWidth(context)*.55, 
      height: getFullheight(context)*.4, 
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius:BorderRadius.circular(20)
    ),
    child: Column(
      children: [
Expanded(child: 
Image.asset(image!),

)
, 
SizedBox(height: 8,), 
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(category!,  style: TextStyle(
        color: Colors.black54 ,  fontSize: 15
      ),), 
Text(model!,  style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold
      ),), 
Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star ,color: Colors.amber , size: 20,), 
    SizedBox(width: 4,), 
    Text(rating.toString(),
    style: TextStyle(
      fontSize: 15, fontWeight: FontWeight.bold
    ),
     )
  ],
), 

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("\$$price/$rentDuration", 
    
    style: TextStyle(
      color: Theme.of(context).primaryColor , 
      fontSize: 18 , fontWeight: FontWeight.bold, 

    ),

    ), 
    GestureDetector(
      onTap: (){

    Navigator.of(context).push(
      MaterialPageRoute(builder: (_)=> CarDetailsScreen(
        image: image!,
        model: model,
      ))
    );
      },
      child: Container(
        height: 30, width: 30, 
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor, 
          borderRadius: BorderRadius.circular(8)
        ),
        child: Icon(Icons.arrow_forward , color: Colors.white,),
      ),
    )
  ],
)


    ],
  ),
)




      ],
    ),


    );
  }
}