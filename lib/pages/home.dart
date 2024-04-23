import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelling_app_ui/pages/list_square.dart';
import 'package:travelling_app_ui/pages/options.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
  ];

  final List _options = [
    'Flights',
    'Rides',
    'Hotels',
    'Eateries',
  ];

  final List _icons = [
    FontAwesomeIcons.planeUp,
    FontAwesomeIcons.carRear,
    FontAwesomeIcons.hotel,
    FontAwesomeIcons.bowlFood,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/img/bg_sm.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                blendMode: BlendMode.srcATop,
                filter: ImageFilter.blur(
                  sigmaX: 10, sigmaY: 10,
                  tileMode: TileMode.clamp,                  
                  ),
                child: Column(
                  children: [
                    _banner(),
                    const SizedBox(height: 20,),
                    // _gridOptions(),
                    // const SizedBox(height: 20,),
                    
                    // Options
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        itemCount: _options.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return SquareOption(
                            icon: _icons[index],
                            name: _options[index],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const Text('Trending Trip Ideas'),
                    Expanded(
                      child: ListView.builder(
                        itemCount: _posts.length,
                        itemBuilder: (context, index) {
                          return MyList(
                            child: _posts[index],
                          );
                        }
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _banner() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'What do you want to book today?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            
          ],
        ),
        CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("lib/assets/img/user.jpg"),
        ),
      ],
    );
  }

  Widget _gridOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card(
          color: Colors.blueAccent,
          elevation: 0.0,
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            splashColor: Colors.blueAccent,
            highlightColor: Colors.blueAccent,
            hoverColor: Colors.blueAccent,
            onTap: () {},
            child: const Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 25,
                      bottom: 15,
                      left: 10,
                      right: 10,
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.planeUp,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 10,
                      right: 10,
                      bottom: 15
                    ),
                    child: Text(
                      'Flights',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: Colors.blueAccent,
          elevation: 0.0,
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            splashColor: Colors.blueAccent,
            highlightColor: Colors.blueAccent,
            hoverColor: Colors.blueAccent,
            onTap: () {},
            child: const Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 25,
                      bottom: 15,
                      left: 10,
                      right: 10,
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.carRear,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 10,
                      right: 10,
                      bottom: 15
                    ),
                    child: Text(
                      'Cars',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: Colors.blueAccent,
          elevation: 0.0,
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            splashColor: Colors.blueAccent,
            highlightColor: Colors.blueAccent,
            hoverColor: Colors.blueAccent,
            onTap: () {},
            child: const Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 25,
                      bottom: 15,
                      left: 10,
                      right: 10,
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.hotel,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 10,
                      right: 10,
                      bottom: 15
                    ),
                    child: Text(
                      'Hotels',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: Colors.blueAccent,
          elevation: 0.0,
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            splashColor: Colors.blueAccent,
            highlightColor: Colors.blueAccent,
            hoverColor: Colors.blueAccent,
            onTap: () {},
            child: const Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 25,
                      bottom: 15,
                      left: 10,
                      right: 10,
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.bowlFood,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 10,
                      right: 10,
                      bottom: 15
                    ),
                    child: Text(
                      'Food',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//<a href="https://www.freepik.com/free-vector/young-afro-man-smiling_136480363.htm#fromView=search&page=2&position=13&uuid=1b6da9f5-b5e8-435c-a5a0-89c2fec378b1">Image by studiogstock</a> on Freepik