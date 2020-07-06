import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator Bloc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: KalkulatorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class KalkulatorPage extends StatelessWidget {
  TextEditingController _input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Konversi'),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _input,
              decoration: InputDecoration(
                  labelText: 'Masukan Angka',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(8.0))),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Text('Panjang'),
                    color: Colors.white12,
                    onPressed: () {

                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: RaisedButton(
                    child: Text('Waktu'),
                    color: Colors.white12,
                    onPressed: () {

                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: RaisedButton(
                    child: Text('Suhu'),
                    color: Colors.white12,
                    onPressed: () {

                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0)
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: RaisedButton(
                    child: Text('Berat'),
                    color: Colors.white12,
                    onPressed: () {

                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              margin: EdgeInsets.all(4),
              child: Text(
                  'Hasil Kalkulasi: ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
