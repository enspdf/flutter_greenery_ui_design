import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Color backgroundColor;
  final Color decorationColor;

  DetailsScreen({
    @required this.backgroundColor,
    @required this.decorationColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'greenery nyc',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.1,
                    fontSize: 22,
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  width: 200,
                  child: Text(
                    'Product Overview',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                    ),
                  ),
                ),
                SizedBox(height: 42),
                itemRow(Icons.star, 'water', 'every 7 days'),
                SizedBox(height: 16),
                itemRow(Icons.ac_unit, 'Humidity', 'up to 82%'),
                SizedBox(height: 16),
                itemRow(Icons.straighten, 'Size', '38" - 48"tdll'),
              ],
            ),
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: decorationColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  bottomLeft: Radius.circular(32),
                ),
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 24,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Delivery Info',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: decorationColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  bottomLeft: Radius.circular(32),
                ),
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 24,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Return Policy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 80,
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: Color(0xFF2C2731),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      ),
                      SizedBox(width: 6),
                      Text(
                        'add to cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  itemRow(icon, name, title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(width: 6),
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.white54,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
