import 'package:flutter/material.dart';
import 'package:flutter_app_restaurante/ui/_core/bag_provider.dart';
import 'package:flutter_app_restaurante/ui/_core/widgets/appbar.dart';
import 'package:provider/provider.dart';
import '../../model/dish.dart';
import '../../model/restaurant.dart';

class RestaurantScreen extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, title: restaurant.name),
      body: Center(
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/${restaurant.imagePath}', width: 140),
            Text(
              "Mais pedidos...",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Column(
              children: List.generate(restaurant.dishes.length, (index) {
                Dish dish = restaurant.dishes[index];
                return ListTile(
                  onTap: (){},
                  leading: Image.asset('assets/dishes/default.png', width: 48),
                  title: Text(dish.name),
                  subtitle: Text("R\$${dish.price.toStringAsFixed(2)}"),
                  trailing: IconButton(onPressed: (){
                    context.read<BagProvider>().addAllDishes([dish]);
                  }, icon: Icon(Icons.add)),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
