import 'package:flutter/material.dart';
import 'package:flutter_app_restaurante/model/restaurant.dart';

class RestaurantWidget extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantWidget({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        Image.asset('assets/${restaurant.imagePath}', width: 96),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(restaurant.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Row(
              children: List.generate(restaurant.stars.toInt(), (index) {
                return Image.asset('assets/others/star.png', width: 16);
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('${restaurant.distance}km'),
            ),
          ],
        ),
      ],
    );
  }
}
