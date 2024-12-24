import 'package:flutter/material.dart';

class RowTitle extends StatelessWidget {
  final bool? showAll;
  final String? title;
  final Function? onShowAllTapped;
  const RowTitle({super.key, this.showAll=false, this.title, this.onShowAllTapped});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
Text(title!, 
style: TextStyle(
  fontWeight: FontWeight.bold, 
  fontSize: 20
),
), 


Visibility(
  visible: showAll!,
  child: TextButton(onPressed: (){
onShowAllTapped!();
  }, child: Text("View all" ,style: TextStyle(
    color: Theme.of(context).primaryColor, fontSize: 15
  ),)))

      ],
    );
  }
}