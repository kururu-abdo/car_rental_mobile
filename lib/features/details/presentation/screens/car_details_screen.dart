import 'package:car_rentals/features/details/presentation/widgets/car_card.dart';
import 'package:car_rentals/features/details/presentation/widgets/car_features.dart';
import 'package:car_rentals/features/details/presentation/widgets/car_specifications.dart';
import 'package:car_rentals/features/details/presentation/widgets/cart_bottom.dart';
import 'package:car_rentals/utils/sizes.dart';
import 'package:flutter/material.dart';

class CarDetailsScreen extends StatefulWidget {
  final String? image;
  final String? model;
  const CarDetailsScreen({super.key, this.image, this.model});

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [

SliverPersistentHeader(delegate: SliverDelate(

  height:300, child: SizedBox(
    width: getFullWidth(context),
    child: Stack(
      children: [
    
    Hero(
    tag: widget.image!,
    child: Image.asset(widget.image! , fit: BoxFit.cover,
     height: 300,
      width: getFullWidth(context),
    ), 
    
    
    ),

    Positioned.fill(
      top: -100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
GestureDetector(
  onTap: (){
    Navigator.pop(context);
  },
  child: Container(
    margin: EdgeInsets.symmetric(horizontal: 16),
    height: 50,width: 50,
    decoration: BoxDecoration(
      color: Colors.white, 
      shape: BoxShape.circle
    ),
    child: Center(
      child: Icon(Icons.arrow_back),
    ),
  ),
), 
Container(
  margin: EdgeInsets.symmetric(horizontal: 16),
  height: 50,width: 50,
  decoration: BoxDecoration(
    color: Colors.white, 
    shape: BoxShape.circle
  ),
  child: Center(
    child: Icon(Icons.favorite_outlined ,color:Colors.red,),
  ),
), 

        ],
      ))
    
      ],
    ),
  )
))
, 

SliverToBoxAdapter(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [
      SizedBox(height: 24,),
    CarCard()
    , SizedBox(height: 24,),
CarSpecifications()
        , SizedBox(height: 24,),

CarFeatures()
    //description
    
,
SizedBox(height: 32,)
    ,
    Container(
      width: getFullWidth(context),
      // height: getFullheight(context)/7,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white , 
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 10 , 
            

            spreadRadius: 5,
            offset: Offset(-1, -1), 

            color: Colors.black45.withAlpha(50)

          )
        ]
      ),
      child:     Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
Text('Description', 
style: TextStyle(
  fontWeight: FontWeight.bold, 
  fontSize: 20
),
), 
          SizedBox(height: 8,),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
          
          , 
          textAlign: TextAlign.justify,
          
          ),
        ],
      )
,
    )
    ],),
  ),
)
        ],
      ),

      bottomNavigationBar: CartBottom(),
    );
  }
}
class SliverDelate extends SliverPersistentHeaderDelegate{
  final double? height;
  final Widget? child;

  SliverDelate({required this.height, required this.child});
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
   return child!;
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => height!;

  @override
  // TODO: implement minExtent
  double get minExtent => height!;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
   return oldDelegate.maxExtent != height ||  oldDelegate.minExtent != height!;
  }

}