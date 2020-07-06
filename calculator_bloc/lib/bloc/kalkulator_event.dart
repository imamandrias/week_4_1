abstract class KalkulatorEvent{

}

class Panjang extends KalkulatorEvent{
  final String input;
  Panjang(this.input);
}
class Waktu extends KalkulatorEvent{
  final String input;
  Waktu(this.input);
}
class Suhu extends KalkulatorEvent{
  final String input;
  Suhu(this.input);
}
class Berat extends KalkulatorEvent{
  final String input;
  Berat(this.input);
}