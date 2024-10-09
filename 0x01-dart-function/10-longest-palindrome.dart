import '9-palindrome.dart';

String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }

  String longestPalindrome = "";
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) &&
          substring.length > longestPalindrome.length) {
        longestPalindrome = substring;
      }
    }
  }

  return longestPalindrome.isEmpty ? "none" : longestPalindrome;
}
