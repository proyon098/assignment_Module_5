void main() {
  List<Map<String, dynamic>> fruits = [
    {"name": "Apple", "color": "Red", "price": 2.5},
    {"name": "Banana", "color": "Yellow", "price": 1.0},
    {"name": "Grapes", "color": "Purple", "price": 3.0}
  ];
  print('Original Fruit Details before Discount:');
  showFruitDetails(fruits);

  applyDiscount(fruits, 10);

  print('Fruit Details After Applying 10% Discount:');
  showFruitDetails(fruits);
}

void showFruitDetails(List<Map<String, dynamic>> fruits) {
  for (Map<String, dynamic> Fruit in fruits) {
    print(
        "Name: ${Fruit["name"]}, Color: ${Fruit["color"]}, Price: \$${Fruit["price"].toStringAsFixed(2)}");
  }
}

void applyDiscount(
    List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (Map<String, dynamic> Fruit in fruits) {
    double originalPrice = Fruit["price"];
    double discountAmount = (originalPrice * discountPercentage) / 100;
    Fruit["price"] = originalPrice - discountAmount;
  }
}
