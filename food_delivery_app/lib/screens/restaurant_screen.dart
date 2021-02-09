import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app/models/food.dart';

import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/widgets/rating_starts.dart';

class RestaurantScreen extends StatefulWidget {
  final Restaurant restaurant;
  const RestaurantScreen({
    Key key,
    this.restaurant,
  }) : super(key: key);
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  _buildMenuItem(Food food) {
    return Center(
      child: Container(
        height: 175,
        width: 175,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(food.imageUrl),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              )),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                food.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () => null,
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Theme.of(context).primaryColor,
    ));
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              Hero(
                tag: widget.restaurant.imageUrl,
                child: Image(
                  height: 250.0,
                  width: MediaQuery.of(context).size.width,
                  image: AssetImage(widget.restaurant.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      iconSize: 30.0,
                    ),
                    IconButton(
                      onPressed: () => null,
                      icon: Icon(
                        Icons.favorite,
                        color: Theme.of(context).primaryColor,
                      ),
                      iconSize: 35.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.restaurant.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22.0,
                      ),
                    ),
                    Text(
                      '0.2 miles away',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.0,
                ),
                RatingStars(
                  ratings: widget.restaurant.rating,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  widget.restaurant.address,
                  style: TextStyle(
                    fontSize: 15.5,
                    color: Colors.grey[900],
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        color: Theme.of(context).primaryColor,
                        textTheme: ButtonTextTheme.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0)),
                        onPressed: () {},
                        child: Text(
                          'Reviews',
                        ),
                      ),
                      FlatButton(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        color: Theme.of(context).primaryColor,
                        textTheme: ButtonTextTheme.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0)),
                        onPressed: () {},
                        child: Text(
                          'Contact',
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 21.0,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(10.0),
              crossAxisCount: 2,
              children: List.generate(widget.restaurant.menu.length, (index) {
                Food food = widget.restaurant.menu[index];
                return _buildMenuItem(food);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
