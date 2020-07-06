import 'package:calculator_bloc/bloc/kalkulator_bloc.dart';
import 'package:calculator_bloc/bloc/kalkulator_event.dart';
import 'package:calculator_bloc/bloc/kalkulator_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocProvider<KalkulatorBloc>(
      create: (context)=>KalkulatorBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Kalkulator Konversi'),
          backgroundColor: Colors.cyan,
        ),
        body: BlocBuilder<KalkulatorBloc, KalkulatorState>(
          builder: (context, state) => Padding(
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
                          BlocProvider.of<KalkulatorBloc>(context).add(Panjang(_input.text));
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
                          BlocProvider.of<KalkulatorBloc>(context).add(Waktu(_input.text));
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
                          BlocProvider.of<KalkulatorBloc>(context).add(Suhu(_input.text));
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
                          BlocProvider.of<KalkulatorBloc>(context).add(Berat(_input.text));
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
                Text('Hasil Kalkulasi: ',style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  child: ShowResult(state),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ShowResult(KalkulatorState state) {
    if(state is Calculated){
      return Text(
        '${state.input} ${state.kata_1} ${state.result} ${state.kata_2}',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      );
    }else{
      return Text(
        'Silahkan Masukan Angka dan Klik Tombol di Atas',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      );
    }
  }
}
