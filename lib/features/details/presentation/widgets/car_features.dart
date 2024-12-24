import 'package:car_rentals/utils/sizes.dart';
import 'package:flutter/material.dart';

class CarFeatures extends StatelessWidget {
   CarFeatures({super.key});
final List<String> _features = [
  'Bluetooth' , 'Apple Carplay', 'Android Auto', '360 Camera' , 
  'Parking Sensors' , 'Navigation'

];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getFullWidth(context),
      // height: 100, 
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
        
      )
, 

child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
Text('Features', 
style: TextStyle(
  fontWeight: FontWeight.bold, 
  fontSize: 20
),
), 

Wrap(
  // alignment: WrapAlignment.start,
  runSpacing: 10,
  
  spacing: 5,
  children: _features.map((feature)=>
  
  Container(
    height: 40,
//  width: 80,
constraints: BoxConstraints(
  maxWidth: 120,
),
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      border: Border.all(
        color: Theme.of(context).primaryColor.withAlpha(60),
         
      ),
color: Theme.of(context).primaryColor.withAlpha(40), 
borderRadius: BorderRadius.circular(16)
    ),
    child: Center(
      child: Text(feature , 
      
      style: TextStyle(
        color: Theme.of(context).primaryColor , 
        fontSize: 15
      ),
      ),
    ),
  )
  
  ).toList(),
)


  ],
),
    );
  }
}