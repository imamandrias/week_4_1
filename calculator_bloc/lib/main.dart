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
              decoration: InputDecoration(
                  labelText: 'Masukan Angka'
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 8.0,),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Text('Panjang'),
                    color: Colors.blueGrey,
                    onPressed: (){},
                  ),
                ),
                SizedBox(width: 8.0,),
                Expanded(
                  child: RaisedButton(
                    child: Text('Waktu'),
                    color: Colors.blueGrey,
                    onPressed: (){},
                  ),
                ),
                SizedBox(width: 8.0,),
                Expanded(
                  child: RaisedButton(
                    child: Text('Suhu'),
                    color: Colors.blueGrey,
                    onPressed: (){},
                  ),
                ),
                SizedBox(width: 8.0,),
                Expanded(
                  child: RaisedButton(
                    child: Text('Berat'),
                    color: Colors.blueGrey,
                    onPressed: (){},
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0,),
            Text('Hasil: ')
          ],
        ),
      ),

    );
  }
}

