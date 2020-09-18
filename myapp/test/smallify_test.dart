import 'package:myapp/smallify.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('MakeSmall', () {
    String small1 = Smallify.makeSmall("baum");
    expect(small1, "baumilein");

    String small2 = Smallify.makeSmall("hase");
    expect(small2, "hasilein");
  });
}
