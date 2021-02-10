import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/data.dart';
import 'package:food_delivery_app/models/order.dart';

class FoodCartScreen extends StatefulWidget {
  @override
  _FoodCartScreenState createState() => _FoodCartScreenState();
}

class _FoodCartScreenState extends State<FoodCartScreen> {
  Widget _buildCartItem(Order order) {
    return Container(
      padding: EdgeInsets.all(17.0),
      height: 170,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image(
                    height: 150,
                    width: 150,
                    image: AssetImage(order.food.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.food.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              letterSpacing: 0.3),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          order.restaurant.name,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            letterSpacing: 0.2,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        _buildQty(order.quantity),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$" + order.food.price.toString(),
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQty(int qty) {
    return Container(
      margin: EdgeInsets.only(
        right: 25,
      ),
      height: 37,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          color: Theme.of(context).primaryColor,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {},
            iconSize: 20,
            splashRadius: 20.0,
            color: Theme.of(context).primaryColor,
          ),
          Text(
            qty.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
            iconSize: 20,
            splashRadius: 15.0,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomCard() {
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.077),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Estimated Delivery Time :',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  ' 30 min',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Total Cost :',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  _getTotalCartAmount(),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getTotalCartAmount() {
    double total = 0;
    currentUser.cart.map((Order order) {
      total += order.food.price;
    }).toList();
    return "\$" + total.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart(${currentUser.cart.length})'),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemCount: currentUser.orders.length + 1,
        itemBuilder: (context, index) {
          if (index < currentUser.cart.length) {
            Order order = currentUser.orders[index];
            return _buildCartItem(order);
          } else {
            return _buildBottomCard();
          }
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 1.0,
            color: Colors.grey,
          );
        },
      ),
      bottomSheet: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, -1),
              blurRadius: 12.0,
            ),
          ],
        ),
        child: Center(
          child: FlatButton(
            onPressed: () => null,
            child: Text(
              "CHECKOUT",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
