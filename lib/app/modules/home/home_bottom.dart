import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      color: Colors.orange[900],
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            "Largura: ${size.width}",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          Text(
            "Altura: ${size.height}",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
