import 'package:flutter/material.dart';
import 'package:proyek1_restaurantapp/model/model_restaurant.dart';

class RestaurantDetail extends StatelessWidget {
  const RestaurantDetail(
      {Key? key,
      required this.restaurantID,
      required this.restaurantPICTUREID,
      required this.restaurantNAME,
      required this.restaurantCITY,
      required this.restaurantRATING,
      required this.restaurantDESCRIPTION})
      : super(key: key);
  static const routeName = '/restaurant_detaild';

  final String? restaurantID;
  final String? restaurantPICTUREID;
  final String? restaurantNAME;
  final String? restaurantCITY;
  final String? restaurantRATING;
  final String? restaurantDESCRIPTION;

  @override
  Widget build(BuildContext context) {
    print(restaurantID);
    print(restaurantPICTUREID);
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            child: Image.network(
              '$restaurantPICTUREID',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    ));
  }
}
