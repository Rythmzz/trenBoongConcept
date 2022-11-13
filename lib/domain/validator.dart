class Validations {
  static bool isValidPhoneNumber(String phone) {
    return phone != null && phone.length >= 10 && phone.startsWith('0');
  }
}
