import 'dart:io';
import 'lingkaran.dart';
import 'persegi.dart';
void main(List<String> args) {
  Persegi kotak = new Persegi(8);
  Lingkaran lingkaran = new Lingkaran(3.14, 7);

  stdout.write("Keliling Persegi   : ");
  print(kotak.keliling());
  stdout.write("Luas Persegi       : ");
  print(kotak.luas());
  stdout.write("\nKeliling Lingkaran : ");
  print(lingkaran.keliling());
  stdout.write("Luas Lingkaran     : ");
  print(lingkaran.luas());
}