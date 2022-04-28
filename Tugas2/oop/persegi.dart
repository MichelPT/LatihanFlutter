import 'bangun_datar.dart';

class Persegi extends bangun_datar {
  late double _sisi;

  Persegi(this._sisi);

  @override
  double keliling(){
    return 4*_sisi;
  }
    double luas(){
    return _sisi*_sisi;
  }
}