import 'package:car_rentals/utils/sizes.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(8),
      width: getFullWidth(context),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white , 
        borderRadius: BorderRadius.circular(
          16
        ), 
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.search, 
                color: Colors.black54,
                ) , 
                SizedBox(width: 8,),
            Text('Search for your dream car',
            
            style: TextStyle(
              color: Colors.black45, fontSize: 14
            ),
             )
              ],
            ), 


            Icon(Icons.tune , color: Colors.orange,)
          ],
        ),
      ),
    );
  }
}