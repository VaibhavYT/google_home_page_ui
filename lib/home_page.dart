// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String assetName = 'assets/images/apps_svg.svg';
  Color myColor = Color(0xFF202124);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      appBar: AppBar(
        leading: Icon(Icons.search),
        title: Text('Google Home'),
        backgroundColor: myColor,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Gmail',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Images',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  assetName,
                  width: 40,
                  height: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 25,
                  child: Text('AB'),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/google_logo.png',
                  width: 272,
                  height: 92,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Google or type a URL',
                fillColor: Colors.grey[200],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.all(16),
                suffixIcon: Icon(Icons.mic),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     InkWell(
          //       onTap: () {},
          //       child: Container(
          //         height: 36,
          //         padding: EdgeInsets.only(right: 16,left: 16),
          //         margin:EdgeInsets.only(top: 11,right: 4,bottom: 11,left: 4),
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(4),
          //           color: Color(0xFF303134),
          //           border: Border.all(),
                    
          //         ),
          //         child: Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Text(
          //             'Google Search',
          //             style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 24,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //     InkWell(
          //       onTap: () {},
          //       child: Container(
          //         child: Text(
          //           'Google Search',
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 24,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Google Search'),
                  
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('I\'m Feeling Lucky'),
                  
                ),
              ],
            ),
            SizedBox(height: 16),
        ],
      ),
    );
  }
}
