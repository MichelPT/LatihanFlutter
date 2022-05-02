//Membuat fungsi dengan dengan range yang mengembalikan sebuah list yang berisi angka-angka
/*
import 'dart:io';
void main(List<String> args) {
  (range(1,10));
}

range(int first, int end){
  stdout.write("[$first");
  List <int> numbers= [];
  for (var i = 0; i < end-1; i++) {
    numbers.add(first+1);
    first++;
  }

  for (var item in numbers) {
    stdout.write(", $item");
  }
  stdout.write("]");
}
*/







//List multidimensi
/*
import 'dart:io';
void main(List<String> args) {
  List<List<String>> input = [
    ["001", "Akhmal Dimas", "Sleman", "Gaming"],
    ["002", "Dimas Pratama", "Jogja", "Berkebun"],
    ["003", "Michel Tahya", "Batam", "Musik"]
  ];
  
  stdout.write("\tID\tNama\t\tAlamat\tHobi");
  print("");

  for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 4; j++) {
      stdout.write("\t${input[i][j]}");
    }
    print("");
  }
}
*/







//Class, setter dan getter
/*
void main(List<String> args) {
Lingkaran lingkar= new Lingkaran();
lingkar.setPhi=3.14;
lingkar.setRadius = 7;
print(lingkar.getLuas);
}
class Lingkaran{
double? _phi,_radius;
set setPhi(double? _phi){
this._phi = _phi;
}
set setRadius(double? _radius){
this._radius = _radius;
}
double get getLuas => _phi!*_radius!*_radius!;
}
*/







//Print nama dengan menggunakan Future delay
/*
import 'dart:async';
import 'dart:io';

void main(List<String> args) {
  stdout.write("Nama ");
  michel();
  stdout.write("saya ");
}

Future<void> michel(){
  return Future.delayed(Duration(seconds: 1),() => stdout.write("Michel"));
}
*/










//Menggunakan async, await, dan future
/*
import 'dart:async';
void main(List<String> args) async{
  print("Menyanyi, mulai");
  print(await line1());           //delay 1 detik
  print(await line2());     //delay 2 detik
  line3();     //delay 1 detik
}

Future<String> line1() {
 return Future.delayed(Duration(seconds: 1), () => "Pelangi-pelangi alangkah indahmu");
 }

 Future<String> line2() {
 return Future.delayed(Duration(seconds: 2), () => "Merah kuning hijau");
 }

 Future<void> line3() {
 return Future.delayed(Duration(seconds: 1), () => print("di langit yang biru"));
 }
 */
