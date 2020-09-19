#!/usr/bin/env dart

import 'dart:io';
import 'dart:convert';

void fileFunc() async {
  {
    File f = File("test");
    f.writeAsStringSync("Hallo");
  }

  {
    File f = File("test");
    String content = f.readAsStringSync();
    print(content);
  }
}

Future<String> GET(String url) async {
  HttpClientRequest request = await HttpClient().getUrl(Uri.parse(url));
  HttpClientResponse response = await request.close();
  return utf8.decoder.bind(response).first;
}

void json() {
  List<String> names = ["Hase","Baum"];
  print(jsonEncode(names));

  names = jsonDecode("[\"Hase\", \"Baum\"]").cast<String>();
  print(names);
}

int main() {
  // stdout
  print("Hello Dart");

  // lists
  [1, 2, 3, 4, 5].forEach((element) {
    print("Hello ${element}");
  });

  // maps
  Map m = {"a": "1", "b": "3"};
  m.forEach((key, value) {
    print("${key} -> ${value}");
  });

  // files
  fileFunc();

  // HTTP
  // print(await GET("http://icanhazip.com/"));

  // json
  json();

  print("EOF");
  return 0;
}
