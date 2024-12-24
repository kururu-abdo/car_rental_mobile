import 'package:car_rentals/features/details/presentation/screens/car_details_screen.dart';
import 'package:car_rentals/utils/sizes.dart';
import 'package:flutter/material.dart';

class DealProduct extends StatelessWidget {

    final String? category;
  final String? model;
  final double? rating;
  final String? image;
  final double? price;
  final String? rentDuration;
  const DealProduct({super.key, this.category, this.model, this.rating, this.image, this.price, this.rentDuration});

  @override
  Widget build(BuildContext context) {
    return Container(
width: getFullWidth(context),
height: getFullheight(context)/7,
padding: EdgeInsets.all(8),
margin: EdgeInsets.symmetric(vertical: 8),
decoration: BoxDecoration(
  color: Colors.white, 
  borderRadius: BorderRadius.circular(24)
),
child: Row(
  crossAxisAlignment: CrossAxisAlignment.end,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  // mainAxisSize: MainAxisSize.min,
  children: [
    Container(
      padding: EdgeInsets.all(6),
      
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24)
,
        color: Colors.grey[100]
      ),
      child: Hero(
tag: image!,
        child: Image.asset(image!, width: 100,
        // height: getFullheight(context)/7,
        fit: BoxFit.cover,
        
        ),
      ),
    ), 
    SizedBox(width: 8,),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.spaceAround,

  children: [
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
      fontSize: 15 , fontWeight: FontWeight.bold, 

    ),

    ), 
    
  
  ],
)

  ],
), 

  ],
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
    height: 40,
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor.withAlpha(50), 
      borderRadius: BorderRadius.circular(15)
    ),
    child: Center(
      child: Text('Book now', 
      style: TextStyle(
        color: Theme.of(context).primaryColor, 
        fontSize: 15
      ),
      ),
    ),
  ),
)

  ],
),
    );
  }
}