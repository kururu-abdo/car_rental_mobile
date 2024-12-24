import 'package:car_rentals/features/dashboard/presentation/widgets/notification_icon.dart';
import 'package:car_rentals/features/dashboard/presentation/widgets/search_field.dart';
import 'package:car_rentals/features/home/presentation/widgets/category_list.dart';
import 'package:car_rentals/features/home/presentation/widgets/fearured_products.dart';
import 'package:car_rentals/features/home/presentation/widgets/popular_deals.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: PreferredSize(preferredSize: Size.fromHeight(150), child: Container(
decoration: BoxDecoration(

  gradient: LinearGradient(colors: [
Colors.black45 ,Colors.red

  ]),
  borderRadius: BorderRadius.vertical(

    bottom: Radius.circular(16)
  )
),

padding: EdgeInsets.fromLTRB(
   24, 50, 24,8
),
child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
Text("Hello ,Kururu" , 

style: TextStyle(
  color: Colors.white , fontSize: 24 , fontWeight: FontWeight.bold
),
), 
Text("Find your dream car" , 

style: TextStyle(
  color: Colors.white , fontSize: 14 , fontWeight: FontWeight.w300
),
), 



      ],
    ), 

    NotificationIcon()
  ],
), 

SearchField()

  ],
),
)


),
body: CustomScrollView(
  
  slivers: [
    SliverToBoxAdapter(
      
      child: Column(
        children: [
          SizedBox(height: 16,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CategoryList(),
      ), 
                SizedBox(height: 16,),

Padding(
  padding: const EdgeInsets.all(8.0),
  child: FearuredProducts(),
),
          SizedBox(height: 16,),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: PopularDeals(),
      )
        ],
      ),
    )
  ],
)
    );
  }
}