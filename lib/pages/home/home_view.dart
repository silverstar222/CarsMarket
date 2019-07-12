import 'package:CarsMarket/pages/car_repository/model/car.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Cars Market'),
      ),
      body: Container(
        color: Colors.grey[200],
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: (Car.width / Car.height),
          children: <Widget>[
            new Car("Car 1"),
            new Car("Car 2"),
            new Car("Car 3"),
            new Car("Car 4"),
            new Car("Car 5"),
            new Car("Car 6"),
            new Car("Car 7"),
            new Car("Car 8"),
          ],
        ),
      ),
    );
  }

}