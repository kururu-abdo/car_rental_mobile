import 'package:car_rentals/features/details/presentation/widgets/specification_card.dart';
import 'package:car_rentals/utils/sizes.dart';
import 'package:flutter/material.dart';

class CarSpecifications extends StatelessWidget {
   CarSpecifications({super.key});
final List<Map> _specifications = 
[
  {
    'title':'Power', 
    'data':'350 HP', 
    'image':'assets/images/energy.png'
  }, 
 {
    'title':'mph', 
    'data':'4,5', 
    'image':'assets/images/stopwatch.png'
  },  {
    'title':'Top Speed', 
    'data':'300 km/h', 
    'image':'assets/images/speed.png'
  }, 

];
  @override
  Widget build(BuildContext context) {
    return Column(spacing: 8,
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
Text('Specifications', 
style: TextStyle(
  fontWeight: FontWeight.bold, 
  fontSize: 20
),
), 

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: _specifications.map((specification){
    return SpecificationCard(
      data: specification['data'],
      image: specification['image'],
      label: specification['title'],
    );
  }).toList(),
)


      ],
    
);
  }
}