bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}

String longestPalindrome(String s) {
  String longestPalindrome = "none";
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j < s.length + 1; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) &&
          substring.length > longestPalindrome.length) {
        longestPalindrome = substring;
      }
    }
  }
  return longestPalindrome;
}
