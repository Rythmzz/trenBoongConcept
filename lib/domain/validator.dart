class Validations {
  static bool isValidPhoneNumber(String phone) {
    return phone.length >= 10 && phone.startsWith('0');
  }
}
