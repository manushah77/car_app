import 'package:car/globe.dart';
import 'package:car/map.dart';
import 'package:car/min_map.dart';
import 'package:car/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {

  double _value = 20;
  //
  // void onPageChnag(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  //   pageController.jumpToPage(selectedIndex);
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Center(
          child: Text(
            'its Drive',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none_outlined,
            color: Colors.white70,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.car,
              color: Colors.white70,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: double.infinity,
            child: Image.asset(
              'images/fort.png',
              height: 500,
              width: 500,
            ),
          ),
          Container(
            height: 90,
            width: 340,
            color: Colors.black26,
            child: Column(
              children: [
                Slider(
                    value: _value,
                    min: 0.0,
                    max: 1000.0,
                    divisions: 10,
                    activeColor: Colors.white,
                    inactiveColor: Colors.white70,
                    thumbColor: Colors.transparent,
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.battery_100,
                      color: Colors.white70,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'State of Charges',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      '100%',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '${_value} Km',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 340,
            color: Colors.black26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.lock_outlined,
                    color: Colors.white70,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.lock_open_outlined,
                    color: Colors.white70,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.light_mode_outlined,
                    color: Colors.white70,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.speaker_phone_outlined,
                    color: Colors.white70,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.wind,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 138,
                width: 170,
                color: Colors.black26,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 108.0),
                      child: Icon(
                        Icons.car_rental_outlined,
                        color: Colors.white70,
                        size: 38,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: Text(
                        'Vhichel Finder',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        'Karel Dompert-Strabe,7 \n82245 Dinglong',
                        style: TextStyle(fontSize: 16, color: Colors.white54),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 138,
                width: 170,
                color: Colors.black26,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 108.0),
                      child: Icon(
                        Icons.network_locked_outlined,
                        color: Colors.white70,
                        size: 38,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: Text(
                        'Vhichel Lock',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        'Vhichel lock Front 2Abs/1.2Break pressure',
                        style: TextStyle(fontSize: 16, color: Colors.white54),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
