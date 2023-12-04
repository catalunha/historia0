import 'dart:io';

void main() async {
  printGamer('O que deseja beber hoje ?', 70, color: 'green');
  await Future.delayed(Duration(seconds: 2));
  printGamer('1 - Coca-cola', 70, color: 'red');
  await Future.delayed(Duration(seconds: 2));
  printGamer('2 - Suco de manga (do papai)', 70, color: 'yellow');
  await Future.delayed(Duration(seconds: 2));
  print('😜️');
}

Future<void> printGamer(
  String texto,
  int milliseconds, {
  String color = '\x1B[37m',
}) async {
  Map<String, String> colors = {
    'red': '\x1B[31m',
    'green': '\x1B[32m',
    'yellow': '\x1B[33m',
  };
  stdout.write(colors[color.toLowerCase()]);
  for (var letra in texto.split('')) {
    await Future.delayed(Duration(milliseconds: 30));
    stdout.write(letra);
  }
  await Future.delayed(Duration(seconds: 1));
  print('\x1B[0m');
  await Future.delayed(Duration(seconds: 1));
}
