import 'package:car_rentals/features/home/presentation/widgets/featured_product.dart';
import 'package:car_rentals/shared/presnetation/widgets/row_title.dart';
import 'package:car_rentals/utils/sizes.dart';
import 'package:flutter/material.dart';

class FearuredProducts extends StatefulWidget {
  const FearuredProducts({super.key});

  @override
  State<FearuredProducts> createState() => _FearuredProductsState();
}

class _FearuredProductsState extends State<FearuredProducts> {


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
  title: 'Featured cars',
  showAll: true, 
  onShowAllTapped: (){
    //show all cars
  },
), 
SizedBox(height: 16,) , 

SizedBox(
    height: getFullheight(context)*.4, 
  child: ListView.builder(
    shrinkWrap: true, 
    scrollDirection: Axis.horizontal,
    itemCount: cars.length,
    itemBuilder: (context,index){
  var car = cars[index];
    return FeaturedProduct(
      rating: car['rating'], 
      category: car['category'],
      model: car['model'],
      price: car['price'],
      rentDuration: car['duration'],
      image: car['image'],
  
      
      );
  }),
)

      ],
    );
  }


}