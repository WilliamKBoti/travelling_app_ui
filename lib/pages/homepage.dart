import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travelling_app_ui/pages/home.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Navigations(),
    );
  }
}

class Navigations extends StatefulWidget {
  const Navigations({super.key});

  @override
  State<Navigations> createState() => _NavigationsState();
}

class _NavigationsState extends State<Navigations> {

  int _selectedIndex = 0;

  static const TextStyle tabStyles = TextStyle(
     fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static final List<Widget> _options = <Widget>[
    Home(),
    const Text(
      'Bookings',
      style: tabStyles,
    ),
    const Text(
      'Favorites',
      style: tabStyles,
    ),
    const Text(
      'Account',
      style: tabStyles,
    )
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/img/bg_sm.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: _options.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            unselectedLabelStyle: const TextStyle(
              color: Colors.grey,
            ),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket), 
                label: 'Bookings',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Account'
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blueAccent,
            onTap: _onItemTap,
          ),
        ),
      ),
    );
  }
}

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage("lib/assets/img/bg_sm.jpg"),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: BackdropFilter(
//         filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//         child: const Scaffold(
//           backgroundColor: Colors.transparent,
//           body: Center(
//             child: Text('Homepage'),
//           ),
//         ),
//       ),
//     );
//   }
// }