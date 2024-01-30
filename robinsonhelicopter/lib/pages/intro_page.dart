import 'package:flutter/material.dart';
import 'package:robinsonhelicopter/pages/home_page.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF1a1f28),
      body: Stack(
        children: [
          Container(
            color: Color(0xFF181922),),
          
          Opacity(
            opacity: 0.18,
            child: Image.asset(
              'lib/images/ripple.png',
              height: height * 0.6,
              width: width * 0.5,
              fit: BoxFit.fitHeight,
              ),
          ),

          Image.asset(
            'lib/images/greenheli.png',
            height: height* 0.65,
            width: width * 0.5,
            fit: BoxFit.fitHeight,
          ),
          
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                    text:'FLYING', 
                    style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFffba3b),
                        ), 
                    children: const [
                      TextSpan(
                        text: ' IS ROBINSON', 
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  ),
                  

                  const Text(
                    'Simple design, easy maintenance and low acquisition cost made it popular among private owners and flight schools',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF5a5d7a),
                    ),
                  ),

                  GestureDetector(
                    onTap: () => Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    ),
                    child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFffba3b),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    height: 60,
                    child: const Center(
                      child: Text(
                        'GET STARTED',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                                    
                    ),
                  ),

                ],

              ),
            ),
          )
        ],
      ),
    );
  }
}