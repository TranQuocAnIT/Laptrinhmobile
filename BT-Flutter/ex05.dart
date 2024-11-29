/**/
import 'dart:io';
import 'dart:math';

void main() {
  double a = 0, b = 0, c = 0;
  // InputA
  do {
    stdout.write('Nhap he so a != 0');
    String? input = stdin.readLineSync();
    if (input != null) {
      a = double.tryParse(input) ?? 0;
    }
    if (a == 0) {
      print('vui long nhap lai:');
    }
  } while (a == 0);
  //InputB
  stdout.write('Nhap he so b ');
  String? inputB = stdin.readLineSync();
  if (inputB != null) {
    b = double.tryParse(inputB) ?? 0;
  }
  stdout.write('Nhap he so c ');
  String? inputC = stdin.readLineSync();
  if (inputC != null) {
    c = double.tryParse(inputC) ?? 0;
  }
  // Tinh delta
  double delta = b * b - 4 * a * c;
  //Phuong trinh
  print('phuong trinh ${a}x^2 + ${b}x + $c=0');
  // Vo nghiem
  if (delta < 0) {
    print('Phuong trinh vo nghiem');
  } else if (delta == 0) {
    double x = -b / (2 * a);
    x = double.parse(x.toStringAsFixed(2));
    print('phuong trinh co nghiem kep x = $x');
  } else {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    x1 = double.parse(x1.toStringAsFixed(2));
    x2 = double.parse(x1.toStringAsFixed(2));
    print('phuong trinh co 2 nghiem phan biet:');
    print('x1 = $x1');
    print('x2 = $x2');
  }
}
