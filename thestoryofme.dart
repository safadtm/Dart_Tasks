import 'dart:io';

void main() {
  print('Welcome to Biodata Generator! Please enter your information.');

  print('Name:');
  String name = stdin.readLineSync() ?? '';

  print('Phone number:');
  String phoneNumber = stdin.readLineSync() ?? '';

  print('Age:');
  int age = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print('Height (in cm):');
  double height = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  print('Weight (in kg):');
  double weight = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  print('Address:');
  String address = stdin.readLineSync() ?? '';

  print('Hobbies (comma-separated list):');
  List<String> hobbies = (stdin.readLineSync() ?? '').split(',');

  String biodata = '''
---------------------------
       BIODATA
---------------------------
Name: $name
Phone Number: $phoneNumber
Age: $age
Height: $height cm
Weight: $weight kg
Address: $address
Hobbies: ${hobbies.join(', ')}
---------------------------
  ''';
  print(biodata);
}
