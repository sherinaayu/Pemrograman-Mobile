void main() {
  String test = "test2";

  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    // Already lowercase 'if'
    print("Test2");
  } else {
    // Already lowercase 'else'
    print("Something else");
  }

  // Another condition check
  if (test == "test2") print("Test2 again");

  String isTrue = "true"; // Renamed variable to avoid redeclaration error
  if (isTrue == "true") {
    print("Kebenaran");
  }
}
