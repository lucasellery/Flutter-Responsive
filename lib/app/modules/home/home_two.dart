import 'package:flutter/material.dart';
import 'package:responsividade/app/modules/home/home_bottom.dart';

class HomeTwo extends StatefulWidget {
  final String title;
  const HomeTwo({Key key, this.title = "Responsividade"}) : super(key: key);

  @override
  _HomeTwoState createState() => _HomeTwoState();
}

class _HomeTwoState extends State<HomeTwo> {
  int index = 0;

  _onTap(int _index, bool isPhone) {
    if (isPhone) {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return SecondScreen(index: _index);
      }));
    } else {
      setState(() {
        index = _index;
      });
    }
  }

  _layoutSmartPhone({bool isPhone = true}) {
    return ListView.builder(
      itemCount: 35,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            _onTap(index, isPhone);
          },
          title: Text("Item $index"),
        );
      },
    );
  }

  _layoutWeb() {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;

    return Container(
      width: size.width,
      height: size.height,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: _layoutSmartPhone(isPhone: false),
          ),
          Expanded(
            flex: 3,
            child: SecondScreen(
              index: index,
              isPhone: false,
            ),
          ),
        ],
      ),
    );
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
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 700) {
            return _layoutSmartPhone();
          } else {
            return _layoutWeb();
          }
        },
      ),
      bottomNavigationBar: Bottom(),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final int index;
  final bool isPhone;

  const SecondScreen({Key key, this.index, this.isPhone = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[200],
      appBar: isPhone
          ? AppBar(
              title: Text("Second"),
              backgroundColor: Colors.orange[900],
              centerTitle: true,
            )
          : null,
      body: Center(
        child: Text("Item $index"),
      ),
    );
  }
}
