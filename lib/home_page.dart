// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
        centerTitle: true,
        leading: ResponsiveVisibility(
          hiddenWhen: const [
            Condition.largerThan(name: MOBILE),
          ],
          
          child: IconButton(
            onPressed: (){},
            
            icon: const Icon((Icons.menu))),
        ),
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
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 25,
                    child: Image.asset(
                      'assets/images/googlelogo.png',
                      fit: BoxFit.cover,
                    )),
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
                  'assets/images/googlelogo.png',
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
            height: 40,
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
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 67, 70, 80)),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  ),
                ),
                child: Text('Google Search'),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 67, 70, 80)),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  ),
                ),
                child: Text('Im Feeling Lucky'),
              ),
            ],
          ),
          SizedBox(height: 50),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Google offered in: ',
                  style: TextStyle(color: Colors.white),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'हिन्दी',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Text('  |  '),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'বাংলা',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Text('  |  '),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'తెలుగు',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Text('  |  '),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'मराठी',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Text('  |  '),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'தமிழ்',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Text('  |  '),
              ],
            ),
          ),
          SizedBox(height: 80),

          // ignore: prefer_const_literals_to_create_immutables
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.info),
                label: 'About',
                backgroundColor: Colors.grey),
            BottomNavigationBarItem(
              icon: Icon(Icons.post_add),
              label: 'Advertisement',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
