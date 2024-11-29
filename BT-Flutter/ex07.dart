import 'dart:io';
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
    // 
    int sum =0;
    for(int i=0;i<so;i++)
    {
       if(so % i ==0 )
       {
         sum +=i;
       }
    }
     print('tong các uoc là $sum');
}