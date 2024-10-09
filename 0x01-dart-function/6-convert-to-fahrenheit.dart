List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map((tempInC) {
    double tempInF = (tempInC * 9 / 5) + 32;
    return double.parse(tempInF.toStringAsFixed(2));
  }).toList();
}
