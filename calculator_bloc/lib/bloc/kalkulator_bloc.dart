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
      //String hasilnya = "$angka Meter adalah $hasil Centimeter";
      yield Calculated(hasil);
    }else if(event is Waktu){
      double angka = double.parse(event.input);
      double hasil = angka*60;
      yield Calculated(hasil);
    }
    else if(event is Suhu){
      double angka = double.parse(event.input);
      double hasil = (angka*9/5)+32;
      yield Calculated(hasil);
    }
    else if(event is Berat){
      double angka = double.parse(event.input);
      double hasil = angka*1000;
      yield Calculated(hasil);
    }
  }

}