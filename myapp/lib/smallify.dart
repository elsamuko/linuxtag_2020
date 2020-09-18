/// helper class, which cutifies strings
class Smallify {
  static String makeSmall(String arg) {
    if (arg.isEmpty) return arg;

    // remove last character, if vowel
    arg = arg.replaceAll(RegExp("[aeiouy]+\$"), "");

    arg += "ilein";

    return arg;
  }
}
