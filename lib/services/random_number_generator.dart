import 'dart:math';

class NumbergeneratorService {
  static int GerarNumero(int number) {
    Random random = Random();
    return random.nextInt(number);
  }
}
