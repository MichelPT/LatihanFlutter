//Membuat kalimat dari beberapa variabel.

/* 
void main(List<String> args) {
  var kata1 = "Flutter";
  var kata2 = " is";
  var kata3 = " awesome";

  print(kata1+kata2+kata3);
  }
*/




//Mengakses kalimat dari string.

/*void main(List<String> args) {
  String kalimat = "Belajar Flutter";
	var contoh = kalimat[2] + kalimat[3];
  var kata1 = kalimat[0]+kalimat[1]+kalimat[2]+kalimat[3]+kalimat[4]+kalimat[5]+kalimat[6];
  var kata2 = kalimat[8]+kalimat[9]+kalimat[10]+kalimat[11]+kalimat[12]+kalimat[13]+kalimat[14];

  print("Contoh : "+contoh);
  print("Kata 1 : "+kata1);
  print("Kata 2 : "+kata2);
}
*/




//Input dan output nama depan dan nama belakang

/*
import 'dart:io';
void main(List<String> args) {
  stdout.write("Masukkan nama depan : ");
 String? nama_dpn = stdin.readLineSync();
 stdout.write("Masukkan nama belakang : ");
 String? nama_blkng = stdin.readLineSync();
 print("Nama lengkap : ${nama_dpn} ${nama_blkng}");
}
*/





//Menampilkan segitiga siku-siku dari simbol Asterisk dengan menggunakan looping.

/*
import "dart:io";
void main(List<String> args) {
  int hitung=0;
  while (hitung<4) {
    int bintang=hitung;
    while (bintang>=0) {
      stdout.write("*");
      bintang--;
    }
    print("");
    hitung++;
  }
}
*/





//Menampilkan angka 1-20 dengan keterangan ganjil, genap, dan skip dengan conditional dan looping.

/*
import 'dart:io';
void main(List<String> args) {
  for (var i = 1; i < 21; i++) {
  stdout.write(i);
  if (i%2==1) {
    print(" - Ganjil");
    }
  if (i%2==0 && i%3==0) {
    print(" - Skip");
    }else if (i%2==0) {
    print(" - Genap");
    } 
}
}
*/






//Menampilkan Selamat Malam dengan memanggil fungsi.

/*
void main(List<String> args) {
  malam();
}

malam(){
  print("Selamat Malam.");
}
*/






//Menampilkan nama dan hobi dengan memanggil fungsi dengan parameter.

/*
void main(List<String> args) {
  id("Michel", "bermain musik");
}

id(String name, String hobby){
  print("Halo, Nama saya $name dan hobi saya $hobby");
}
*/