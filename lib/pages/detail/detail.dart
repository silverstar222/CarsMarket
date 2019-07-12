import 'package:CarsMarket/pages/maps/google_maps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailView extends StatefulWidget{
  var title;
  DetailView(this.title);
  @override
  _DetailViewState createState() => _DetailViewState(title);
}

class _DetailViewState extends State<DetailView> {
  var title;
  List<String> descriptionListItems = new List<String>();
  List<String> descriptionListValues = new List<String>();
  _DetailViewState(this.title) {
    descriptionListItems.addAll([
      "Ad ID",
      "Car Make",
      "Care Model",
      "Km",
      "Year",
      "Fule Type",
      "Ad Source",
      "Car Badge",
      "Body Type"
    ]);

    descriptionListValues.addAll([
      "2515015",
      "Mazda",
      "BT-50",
      "146823",
      "2015",
      "Diesel",
      "Carguide",
      "XTR-4x4",
      "Ute"
    ]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Cars'),
      ),
      body: new ListView(
        children: <Widget>[
          new Hero(
            tag: title,
            child: new Image.asset("images/car_max.jpeg",
                width: 600, height: 240, fit: BoxFit.cover),
          ),
          _getTitleColumn(),
          _getDescriptionList(),
          _getMapLocation()
        ],
      ),
    );
  }

  Widget _getTitleColumn() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            '2014 Mazda BT-50 XTR(4x4)',
            style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff3B3B3B)),
          ),
          new Text('\$10999',
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1C8DE5)))
        ],
      ),
    );
  }

  Widget _getDescriptionList() {
    List<Widget> descriptionList = new List<Widget>();
    for (int i = 0; i < this.descriptionListItems.length; ++i) {
      descriptionList.add(_getDescriptionItem(i));
    }
    return new Column(children: descriptionList);
  }

  Widget _getDescriptionItem(index) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Text(
            this.descriptionListItems[index],
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff3D3D3D)),
          ),
          new Text(
            this.descriptionListValues[index],
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
                color: Color(0xff898989)),
          )
        ],
      ),
    );
  }

  Widget _getMapLocation() {
    return Container(
      constraints: BoxConstraints.expand(
        height: 200.0
      ),
      child: new MyMap(),
    );
  }
}
