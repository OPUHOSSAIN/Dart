void main() {
  List<Map<String, dynamic>> fruits = [
    {"name": "Apple", "color": "Red", "price": "2.5"},
    {"name": "Banana", "color": "Yellow", "price": "1.0"},
    {"name": "Grapes", "color": "Purple", "price": "3.0"}
  ];

  void displayFruitDetails() {
    for (int i = 0; i < fruits.length; i++) {
      print(
          "Name: ${fruits[i]["name"]}, Color: ${fruits[i]["color"]}, Price: \$${fruits[i]["price"]}");
    }
  }

  print("Original Fruit Details before Discount:");
  // Printing all fruit details
  displayFruitDetails();

  void applyPriceDiscount(double discount) {
    for (int i = 0; i < fruits.length; i++) {
      fruits[i]["price"] = (double.parse(fruits[i]["price"]) -
              (double.parse(fruits[i]["price"]) * (discount / 100)))
          .toStringAsFixed(2);
    }
  }

  // Applying discount
  applyPriceDiscount(10);

  print(""); // Printing a line break

  print("Fruit Details After Applying 10% Discount:");
  // Printing all fruit details after discount
  displayFruitDetails();
}
