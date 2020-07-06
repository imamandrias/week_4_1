import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calculator_bloc/bloc/kalkulator_event.dart';
import 'package:calculator_bloc/bloc/kalkulator_state.dart';

class KalkulatorBloc extends Bloc<KalkulatorEvent, KalkulatorState>{
  @override
  KalkulatorState get initialState => InitialCalculator(0);

  @override
  Stream<KalkulatorState> mapEventToState(KalkulatorEvent event) async*{
    if (event is Panjang){
      double angka = double.parse(event.input);
      double hasil = angka*100;
      String kata_1 = "Meter =";
      String kata_2 = "Centimer";
      yield Calculated(hasil, angka, kata_1, kata_2);
    }else if(event is Waktu){
      double angka = double.parse(event.input);
      double hasil = angka*60;
      String kata_1 = "Jam =";
      String kata_2 = "Menit";
      yield Calculated(hasil, angka, kata_1, kata_2);
    }
    else if(event is Suhu){
      double angka = double.parse(event.input);
      double hasil = (angka*9/5)+32;
      String kata_1 = "Celcius =";
      String kata_2 = "Fahrenheit";
      yield Calculated(hasil, angka, kata_1, kata_2);
    }
    else if(event is Berat){
      double angka = double.parse(event.input);
      double hasil = angka*1000;
      String kata_1 = "Kilogram =";
      String kata_2 = "Gram";
      yield Calculated(hasil, angka, kata_1, kata_2);
    }
  }

}