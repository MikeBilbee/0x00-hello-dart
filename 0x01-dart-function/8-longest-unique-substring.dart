String longestUniqueSubstring(String str) {
  String longestSubstring = "";
  String currentSubstring = "";
  for (int i = 0; i < str.length; i++) {
    for (int j = i; j < str.length; j++) {
      if (!currentSubstring.contains(str[j])) {
        currentSubstring += str[j];
      } else {
        break;
      }
    }
    if (currentSubstring.length > longestSubstring.length) {
      longestSubstring = currentSubstring;
    }
    currentSubstring = "";
  }
  return longestSubstring;
}
