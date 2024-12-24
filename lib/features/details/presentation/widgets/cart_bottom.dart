import 'package:car_rentals/features/details/presentation/widgets/book_button.dart';
import 'package:car_rentals/utils/sizes.dart';
import 'package:flutter/material.dart';

class CartBottom extends StatelessWidget {
  const CartBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getFullWidth(context),
      height: 100, 
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
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
Column(crossAxisAlignment: CrossAxisAlignment.start,
  children: [
   Text('Price',  style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, 
              color: Colors.grey[500]
          ),),
 Text("\$5474.0", 
        
        style: TextStyle(
          color: Theme.of(context).primaryColor , 
          fontSize: 24 , fontWeight: FontWeight.bold, 
    
        ),
    
        ),
  ],
)
, 

BookButton(
  title: 'Book Now',
)

        ],
      ),
    );
  }
}