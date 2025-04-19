import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app_restaurante/model/restaurant.dart';

class RestaurantData extends ChangeNotifier{
  List<Restaurant> listRestaurant = [];

  Future<void> getRestaurants() async {
    String jsonString = await rootBundle.loadString('assets/data.json');
    Map<String, dynamic> data = json.decode(jsonString);
    List<dynamic> restaurantsData = data['restaurants'];

    for (var restaurantsData in restaurantsData) {
      Restaurant restaurant = Restaurant.fromMap(restaurantsData);
      listRestaurant.add(restaurant);
    }
  }
}
