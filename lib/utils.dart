class Utils {
  static String? idValidator(String? value) {
    if (value == null) return "Not a valid ID!";
    if (value.length != 6) return "Not a valid ID!";
    RegExp regex = RegExp(r"^[a-zA-Z0-9]+$");
    if (!regex.hasMatch(value)) return "Not a valid ID!";
    return null;
  }
}