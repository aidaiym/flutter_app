import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  int _counter = 0;

  void increment() {
    setState(() {
      _counter++;
    });
  }

  void decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          title:
              const Text('Тапшырма 01', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white),
      body: Center(
        child: Column(    
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
             color: Colors.cyan[300],
              child:Text(
              'Сан: ' '$_counter', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, color:Colors.white),
            ),
            ),
        
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton
              (
                color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
                  onPressed: increment,
                  child: Icon(Icons.add),
                  // tooltip: 'Increment',
                  
                ),
                SizedBox(
                  width: 20.0,
                ),
                MaterialButton
              (
                color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
                  onPressed: decrement,
                  child: Icon(Icons.remove),
                  // tooltip: 'Increment',
                  
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
