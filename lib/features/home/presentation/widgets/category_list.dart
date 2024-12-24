import 'package:car_rentals/features/home/presentation/widgets/category_item.dart';
import 'package:car_rentals/shared/presnetation/widgets/row_title.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {

  final List<String> _categories = [
'All', 'Tesla' ,'BMW' , 'Mercedes', 'Toyota'
  ];

  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
RowTitle(
  title: 'Categories',
), 

SizedBox(height: 16 ,), 
SizedBox(
  height: 50,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    itemCount: _categories.length,
    itemBuilder: (context, index){
  return CategoryItem(
    title: _categories[index],
    index: index,
    selected: index==_selectedIndex,
    onTap: (i){_selectedIndex = i; 
    setState(() {
      
    });
    },
  );
    }),
)
      ],
    );
  }
}