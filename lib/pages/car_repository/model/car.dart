import 'package:CarsMarket/pages/detail/detail.dart';
import 'package:flutter/material.dart';

class Car extends StatelessWidget {
  static final double width = 167.0;
  static final double height = 190.0;

  var title;
  Car(this.title);

  BuildContext _context;
  @override
  Widget build(BuildContext context) {
    this._context = context;
    return new GestureDetector(
      onTap: _handleTapUp,
      child: new Container(
        margin: const EdgeInsets.all(10.0),
        child: new Material(
          borderRadius: new BorderRadius.circular(6.0),
          elevation: 2.0,
          child: _getGridItem(),
        ),
        // child: _getGridItem(),
      ),
    );
  }

  Widget _getGridItem() {
    return new Container(
      // width: 165.0,
      // height: 195.0,
      // color: Colors.red,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Hero(
            tag: title,
            child: _getImageWidget(),
          ),
          _getColumText(),
        ],
      ),
    );
  }

  Widget _getImageWidget() {
    return new Container(
      child: new ClipRRect(
        borderRadius: new BorderRadius.circular(6.0),
        child: _getImageNetwork(),
      ),
    );
  }

  Widget _getImageNetwork() {
    return new Image.asset(
      'images/car_max.jpeg',
      // 'images/car.png',
      height: Car.height / 1.5,
      fit: BoxFit.cover,
    );
  }

  Widget _getColumText() {
    return new Expanded(
      child: new Container(
        margin: new EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            _getTitleWidget("Tesla S sasdasddasdsa dsdasdasdsa dsadasdasda"),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _getKMWidget("2017 - 53293 Km"),
                      _getPriceWidget("\$10089"),
                    ],
                  ),
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      // color: Colors.red,
                      // alignment: Alignment.bottomCenter,
                      child: _getLogoWidiget(),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _getTitleWidget(String carName) {
    return new Text(
      carName,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: new TextStyle(
          color: Color(0xff3B3B3B),
          fontSize: 16.0,
          fontWeight: FontWeight.bold),
      textAlign: TextAlign.start,
    );
  }

  Widget _getKMWidget(String carName) {
    return new Text(
      carName,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: new TextStyle(
        height: 1.0,
        color: Color(0xff727272),
        fontSize: 12.0,
      ),
      textAlign: TextAlign.start,
    );
  }

  Widget _getPriceWidget(String carName) {
    return new Text(
      carName,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: new TextStyle(
          color: Color(0xff1C8DE5),
          fontSize: 12.0,
          fontWeight: FontWeight.bold),
      textAlign: TextAlign.end,
    );
  }

  Widget _getLogoWidiget() {
    return new Image.asset(
      'images/logo.png',
      fit: BoxFit.fill,
    );
  }

  _handleTapUp() {
    Navigator.of(_context).push(
      new MaterialPageRoute(builder: (BuildContext context){
        return new DetailView(this.title);
      })
    );
  }
}
