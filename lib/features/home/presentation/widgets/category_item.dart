import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Function(int)? onTap;
  final int? index;
  final String? title;
  final bool? selected;
  const CategoryItem({super.key, this.title, this.selected, this.onTap, this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap!(index!);
      },
      child: Container(
        height: 50,
        constraints: BoxConstraints(
          minWidth: 40 ,
        ),
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(
          horizontal: 8
        ),
        decoration: BoxDecoration(
      color:
      
      selected!? Theme.of(context).primaryColor:
       Colors.white , 
      borderRadius: BorderRadius.circular(20), 
      
        ),
        child:  Text(title! ,
        style: TextStyle(
      color: selected!? Colors.white: Colors.black54
        ),
        
         ) ,
      
      ),
    );
  }
}