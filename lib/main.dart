import 'package:flutter/material.dart';
import 'package:flutter_greenery_ui_design/details_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Greenery NYC',
      home: MyHomePage(),
    );
  }
}

var greenColor = Color(0xFF32A05F);
var darkGreenColor = Color(0xFF279152);
var productImage =
    'https://i.pinimg.com/originals/8f/bf/44/8fbf441fa92b29ebd0f324effbd4e616.png';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(108),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 8),
                    Icon(Icons.arrow_back),
                    SizedBox(height: 8),
                    Container(
                      width: 300,
                      child: Text(
                        'Fiddle Leaf Fig Topiary',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      '10 Nursey Pot',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            '\$',
                            style: TextStyle(
                              color: greenColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          '85',
                          style: TextStyle(
                            color: greenColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 52,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      backgroundColor: greenColor,
                                      decorationColor: darkGreenColor,
                                    ),
                              ),
                            );
                          },
                          backgroundColor: greenColor,
                          child: Icon(Icons.shopping_cart),
                        ),
                        Container(
                          width: 200,
                          child: Image.network(
                            productImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 16),
                  Text(
                    'Planting',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width / 2 - 50,
                        decoration: BoxDecoration(
                          color: darkGreenColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '250',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 42,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'ml',
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'water',
                              style: TextStyle(color: Colors.white54),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width / 2 - 50,
                        decoration: BoxDecoration(
                          color: darkGreenColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '18',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 42,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'c',
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Sunshine',
                              style: TextStyle(color: Colors.white54),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
