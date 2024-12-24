import 'package:car_rentals/features/home/presentation/widgets/deal_product.dart';
import 'package:car_rentals/shared/presnetation/widgets/row_title.dart';
import 'package:flutter/material.dart';

class PopularDeals extends StatefulWidget {
  const PopularDeals({super.key});

  @override
  State<PopularDeals> createState() => _PopularDealsState();
}

class _PopularDealsState extends State<PopularDeals> {

  List<Map> cars =[ 
    {
      'image':'assets/images/car1.jpg',
      'category':'Tesla', 
      'model':'Tesla Model 3', 
      'rating': 4.5, 
      'price':1000.0, 
      'duration': 'day'
    }, 
{
      'image':'assets/images/car2.jpg',
      'category':'Tesla', 
      'model':'Tesla Model 4', 
      'rating': 4.5, 
      'price':1000.0, 
      'duration': 'month'
    }, {
      'image':'assets/images/car3.jpg',
      'category':'Tesla', 
      'model':'Tesla Model 3', 
      'rating': 4.5, 
      'price':1000.0, 
      'duration': 'day'
    }, {
      'image':'assets/images/car4.jpg',
      'category':'Tesla', 
      'model':'Tesla Model 3', 
      'rating': 4.5, 
      'price':1000.0, 
      'duration': 'day'
    }, {
      'image':'assets/images/car5.jpg',
      'category':'Tesla', 
      'model':'Tesla Model 3', 
      'rating': 4.5, 
      'price':1000.0, 
      'duration': 'day'
    }, 

  ];
  
  
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
RowTitle(
  title: 'Popular Deals',
 
), 
SizedBox(height: 16,) , 

ListView.builder(
  physics: NeverScrollableScrollPhysics(),
  shrinkWrap: true, 

  itemCount: cars.length,
  itemBuilder: (context,index){
var car = cars[index];
  return DealProduct(
    rating: car['rating'], 
    category: car['category'],
    model: car['model'],
    price: car['price'],
    rentDuration: car['duration'],
    image: car['image'],

    
    );
})

      ],
    );
  }

}