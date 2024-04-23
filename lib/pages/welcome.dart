import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelling_app_ui/pages/homepage.dart';

class Welcome extends StatelessWidget {
  Welcome({super.key});

  late double _deviceHeight, _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/img/bg_sm.jpg"),
          fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(top: 80, child: _buildTop()),
            Positioned(bottom: 0, child: _buildBottom()),
          ],
        ),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
        //   children: [
        //     _buildTop(),
        //     _buildBottom(),
        //   ],
        // ),
      ),
    );
  }

  Widget _buildTop () {
    return SizedBox(
      width: _deviceWidth,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FaIcon(
            FontAwesomeIcons.route,
            size: 100,
            color: Colors.white,
          ),
          Text(
            'Travellers',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBottom () {
    return SizedBox(
      width: _deviceWidth,
      
      child: const Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Content(),
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Explore",
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(
          "New Places",
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(
          "Travellers will help you find new hotels, book rides and cheep flights and lots more.",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 10,),
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.blueAccent),
            
          ),
          
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => const Homepage()),);
          }, 
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'GET STARTED',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10,),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 18,
              ),
            ],
          ),
        ),
      ],
  );
}
}

//"https://www.freepik.com/free-photo/beautiful-scenery-powerful-waterfall-surrounded-by-rocky-cliffs-trees-canada_16225178.htm#fromView=search&page=1&position=34&uuid=6eea8ab1-bcec-4861-9dc0-9bc9b4e2fb78">Image by wirestock on Freepik</a>
//<a href="https://www.freepik.com/free-photo/mountains-blue-sky_13143792.htm#fromView=search&page=2&position=26&uuid=410bf43b-44b9-42ae-84e1-4c14301ba1d8">Image by ninjason1 on Freepik</a>