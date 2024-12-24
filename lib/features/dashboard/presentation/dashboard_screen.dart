import 'package:car_rentals/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

int _selectedScreen = 0;




_changeScreen(int index){
  _selectedScreen =index;
  setState(() {
    
  });
}

  @override
  Widget build(BuildContext context) {
    List<Widget> screens =[
      HomeScreen() , Container() , Container() , Container()
    ];
    return  Scaffold(
      body: screens[_selectedScreen],
      bottomNavigationBar: Theme(

         data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Colors.white,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        // primaryColor: Colors.red,
        // textTheme: Theme
        //     .of(context)
        //     .textTheme
        //     .copyWith(caption: new TextStyle(color: Colors.yellow))
            ), 
        child: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Theme.of(context).primaryColor ,
          currentIndex: _selectedScreen,
          elevation: 2,
          onTap: (i){
            _changeScreen(i);
          },
          
          items: 
        [
        
          BottomNavigationBarItem(
          label: 'Home',
            icon: Icon(Icons.home), 
            
          ), 
        BottomNavigationBarItem(
          label: 'Search',
            icon: Icon(Icons.search), 
            
          ), BottomNavigationBarItem(
          label: 'Facourites',
            icon: Icon(Icons.favorite_outline), 
            
          ), BottomNavigationBarItem(
          label: 'Profile',
            icon: Icon(Icons.person_outline), 
            
          ), 
        
        ]
        
        ),
      ),
    );
  }
}