import 'package:car_rentals/utils/sizes.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
   CarCard({super.key});
 

  final List<Map> _topFeatures =[ 
  {
    'title':'300 km/h', 
    'image':'assets/images/speed.png'
  },
  {
    'title':'Automatic', 
    'image':'assets/images/gear.png'
  },
  {
    'title':'50L', 
    'image':'assets/images/gas.png'
  },

];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getFullWidth(context),
      height: getFullheight(context)/6.5,
      decoration: BoxDecoration(
        color: Colors.white , 
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 20 , 
            

            spreadRadius: 5,
            offset: Offset(-1, -1), 

            color: Colors.black45.withAlpha(50)

          )
        ]
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Mercedes',  style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, 
              color: Colors.grey[500]
          ),),Text('Mercedes AMG GT',  style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, 
          // color: Colors.grey[500]
      ),),
  ],
), 
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("\$5474.0", 
        
        style: TextStyle(
          color: Theme.of(context).primaryColor , 
          fontSize: 24 , fontWeight: FontWeight.bold, 
    
        ),
    
        ),


       Text('per day',  style: TextStyle(
                 fontSize: 18, fontWeight: FontWeight.w500, 
                 color: Colors.grey[500]
             ),)
  ],
), 
            ],
          )
       , 

       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _topFeatures.map((feature){

return 
  Container(
    height: 40,
//  width: 80,
constraints: BoxConstraints(
  maxWidth: 120,
),
    padding: EdgeInsets.all(4),
    decoration: BoxDecoration(
      color:
 Colors.grey.withAlpha(60),
borderRadius: BorderRadius.circular(16)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 4,
      children: [
        Image.asset(feature['image'], 
        width: 24,height: 24,
        color: Theme.of(context).primaryColor,
        ),
        Text(feature['title'] , 
        
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15
        ),
        ),
      ],
    ),
  );
        }).toList(),
       )
       
       
        ],
      ),
    );
  }
}