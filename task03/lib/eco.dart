import 'dart:io';

class Product {
  String name;
  String description;
  double price;

  Product(this.name, this.description, this.price);

  @override
  String toString() {
    return 'Name: ' +
        name +
        '\nDescription: ' +
        description +
        '\nPrice: ' +
        price.toStringAsFixed(2);
  }
}

class ProductManager {
  List<Product> products = [];

  void addProduct(String name, String description, double price) {
    products.add(Product(name, description, price));
    print('Product added successfully!');
  }

  void viewAllProducts() {
    if (products.isEmpty) {
      print('No products available.');
      return;
    }
    for (int i = 0; i < products.length; i++) {
      print('\nProduct ID: ' + i.toString());
      print(products[i]);
    }
  }

  void viewProduct(int index) {
    if (index < 0 || index >= products.length) {
      print('Invalid product ID.');
      return;
    }
    print(products[index]);
  }

  void editProduct(
      int index, String newName, String newDescription, double newPrice) {
    if (index < 0 || index >= products.length) {
      print('Invalid product ID.');
      return;
    }
    products[index].name = newName;
    products[index].description = newDescription;
    products[index].price = newPrice;

    print('Product updated successfully!');
  }

  void deleteProduct(int index) {
    if (index < 0 || index >= products.length) {
      print('Invalid product ID.');
      return;
    }
    products.removeAt(index);
    print('Product deleted successfully!');
  }
}
