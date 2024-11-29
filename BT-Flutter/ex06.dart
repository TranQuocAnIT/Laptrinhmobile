import 'dart:io';
import 'dart:math';
void main ()
{
  int so =0;
  stdout.write('Nhap so nguyen : ');
  String? input = stdin.readLineSync();
    if (input != null) {
      so = int.tryParse(input) ?? 0;
    }
    if (so == 0) {
      print('vui long nhap lai:');
    }
     String binary = '';
  int temp = so;
  while (temp > 0) {
    binary = (temp % 2).toString() + binary;
    temp ~/= 2;
  }
  print('So nhi phan cua $so la : $binary');
}