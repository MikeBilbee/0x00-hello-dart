void outer(String name, String id) {
  String inner() {
    var names = name.split(" ");
    var firstName = names[0];
    var lastName = names[1];
    var initial = lastName[0].toUpperCase();
    return "Hello Agent $initial.$firstName your id is $id";
  }

  print(inner());
}
