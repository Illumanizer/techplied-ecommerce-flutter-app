class PricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
    double taxrate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxrate;
    double shippingCost = getShippingCostForLocation(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  static double getTaxRateForLocation(String location) {
    return 0.18;
  }

  static double getShippingCostForLocation(String location) {
    return 50;
  }

  static String calculateTaxAmount(double productPrice, String location) {
    double taxrate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxrate;
    return taxAmount.toStringAsFixed(2);
  }

  static String calucateShippingCost(String location) {
    double shippingCost = getShippingCostForLocation(location);
    return shippingCost.toStringAsFixed(2);
  }
}
