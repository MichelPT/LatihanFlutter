import 'bangun_datar.dart';

class Lingkaran extends bangun_datar{
  late double _phi, _rad;
  
  Lingkaran(this._phi, this._rad);

  @override
  double keliling(){
    return 2*_phi*_rad;
  }
    double luas(){
    return _phi*_rad*_rad;
  }
}