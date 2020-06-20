import 'package:flutter/material.dart';
import 'main.dart';

//Text('📏  27 x 27 inches'),
//Text('⚫  Black'),
//Text('🏻  Black Gold')
//'\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In justo elit, mattis non nisi malesuada, condimentum condimentum tellus. . sodales, ut facilisis sem rutrum. Sed id sagittis nibh. Donec sodales urna massa, at interdum odio accumsan ut. Nam libero urna, molestie eget purus nec, ultricies ullamcorper leo.',
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Hero(
              tag: 'img1',
              child: Image(
                  height: height * 0.6, image: AssetImage('images/lamp2.jpg')),
            ),
            Positioned(
              top: 50,
              left: -10,
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
            ),
            DraggableScrollableSheet(
                initialChildSize: 0.4,
                maxChildSize: 0.6,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(30)),
                        width: width * 0.7,
                        child: Column(
                          children: [
                            Text(
                              'LitMacmann',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 35),
                            ),
                            Text(
                              'Table Lamp\n',
                              style: TextStyle(fontSize: 28),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('📏  27 x 27 inches'),
                                    Text('⚫  Black'),
                                    Text('🏻  Black Gold')
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              '\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In justo elit, mattis non nisi malesuada, condimentum condimentum tellus. . sodales, ut facilisis sem rutrum. Sed id sagittis nibh. Donec sodales urna massa, at interdum odio accumsan ut. Nam libero urna, molestie eget purus nec, ultricies ullamcorper leo.',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.7)),
                            ),
                            Text('\nWARRANTY IS COVERED FOR 5 YEARS\n'),
                            Material(
                              borderRadius: BorderRadius.circular(30),
                              elevation: 4,
                              color: Color.fromRGBO(130, 102, 117, 1),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'ADD TO BAG  ',
                                      style: TextStyle(
                                          fontSize: 23, color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.add_shopping_cart,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
