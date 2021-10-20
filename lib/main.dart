import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  int _counter = 0;
  String nameOfNumber = 'Сан';
  void increment() {
    _counter++;
    print('increment: $_counter');
    setState(() {});
  }

  void decrement() {
    _counter--;
    print('decrement: $_counter');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            nameOfNumber + ':' + _counter.toString(),
            style: TextStyle(
              fontSize: 45.0,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 25.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                ),
                onPressed: decrement,
                child: Padding(
                  padding: const EdgeInsets.only(left: 26.0, right: 26.0),
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 45.0),
                  ),
                ),
              ),
              SizedBox(width: 25.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                ),
                onPressed: decrement,
                child: Padding(
                  padding: const EdgeInsets.only(left: 26.0, right: 26.0),
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 45.0),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
