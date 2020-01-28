import 'package:flutter/material.dart';
import 'package:responsividade/app/modules/home/home_bottom.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Responsividade"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

// Using MediaQuery and ConstrainedBox

class _HomePageState extends State<HomePage> {
  //responsividade de texto
  double _getValue({double value, double max, double min}) {
    if (value < max && value > min) {
      return value;
    } else if (value < min) {
      return min;
    } else {
      return max;
    }
  }

  TextStyle _getStyle() {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    var fontSize = size.width * 0.05;

    return TextStyle(
        fontSize: _getValue(value: fontSize, max: 28, min: 12),
        fontWeight: FontWeight.w400);
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 200, minWidth: 100),
              child: Container(
                width: size.width * 0.50,
                height: size.height * 0.25,
                child: Image.network(
                  'https://i.pinimg.com/236x/1a/fc/a0/1afca0c02a451e9c7f32cf9d5ef955f1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text("Lucas Ellery", style: _getStyle()),
            Text("olucasellery@gmail.com"),
          ],
        ),
      ),
      bottomNavigationBar: Bottom(),
    );
  }
}
