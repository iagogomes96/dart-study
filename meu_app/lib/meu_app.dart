double calculate(double a, double b, String operation) {
  double result = 0.0;
  switch (operation) {
    case "+":
      result = (a + b);
    case "-":
      result = (a - b);
    case "*":
      result = (a * b);
    case "/":
      result = (a / b);
    case "%":
      result = (a % b);
  }
  return result;
}
