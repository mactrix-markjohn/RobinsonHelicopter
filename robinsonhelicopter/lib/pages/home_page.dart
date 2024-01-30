import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1a1f28),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            }, 
            icon: const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ), 
        ),
      ),
      body: Column(
        children: [
          // Text top text
          Container(
            width: 500 ,
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                // first text
                const Text('Hello Enrique',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                ),
              ),

                // second text
                const Text(
                  'Prepared to fly?',
                  style: TextStyle(
                    color: Color(0xFFba8635),
                    fontSize: 11,
                  ),
                ),

                SizedBox(height: 25,),

                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.white10,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                        
                          Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Icon(Icons.search,
                            color: Colors.white70,
                          ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Text(
                              'Search',
                              style: TextStyle(color: Colors.white54),
                          ),
                          ),
                          
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.menu_outlined,
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                ),
                ],
              ),
            ),

          Container(
            width: 500,
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // first container
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFF1b2331),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    child: const Column(
                      children: [
                        // icon spot
                        Icon(
                          Icons.shopping_cart,
                          color: Color(0xFFffba3b),
                        ),
                        // sizedbox
                        SizedBox(height: 20,),
                        //head text
                        Text(
                          'Shop',
                          style: TextStyle(color: Color(0xFFffba3b)),
                        ),
                        //sub text
                        Text(
                          'Helicopter',
                          style: TextStyle(
                            color: Color.fromARGB(255, 105, 112, 128),
                            fontSize: 12
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // second container
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1,
                      color: Colors.white24
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    child: const Column(
                      children: [
                        // icon spot
                        Icon(
                          Icons.headset_mic_outlined,
                          color: Color.fromARGB(255, 105, 112, 128),
                        ),
                        // sizedbox
                        SizedBox(height: 20,),
                        //head text
                        Text(
                          'Courses',
                          style: TextStyle(color: Color.fromARGB(255, 105, 112, 128)),
                        ),
                        //sub text
                        Text(
                          '276 hours',
                          style: TextStyle(
                            color: Color.fromARGB(255, 105, 112, 128),
                            fontSize: 12
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // third container
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1,
                      color: Colors.white24
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          
        ],
      ),
     // bottomNavigationBar: BottomNavigationBar(items: items),

    );
  }
}