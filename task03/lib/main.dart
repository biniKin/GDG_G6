import 'dart:io';

import 'eco.dart';

void main() {
  ProductManager manager = ProductManager();

  while (true) {
    print('\n===== E-Commerce Product Manager =====');
    print('1. Add Product');
    print('2. View All Products');
    print('3. View Product');
    print('4. Edit Product');
    print('5. Delete Product');
    print('6. Exit');
    stdout.write('Enter your choice: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter product name: ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter product description: ');
        String description = stdin.readLineSync()!;
        stdout.write('Enter product price: ');
        double price = double.tryParse(stdin.readLineSync()!) ?? 0.0;
        manager.addProduct(name, description, price);
        break;
      case '2':
        manager.viewAllProducts();
        break;
      case '3':
        stdout.write('Enter product ID: ');
        int index = int.tryParse(stdin.readLineSync()!) ?? -1;
        manager.viewProduct(index);
        break;
      case '4':
        stdout.write('Enter product ID to edit: ');
        int index = int.tryParse(stdin.readLineSync()!) ?? -1;
        stdout.write('Enter new product name: ');
        String newName = stdin.readLineSync()!;
        stdout.write('Enter new product description: ');
        String newDescription = stdin.readLineSync()!;
        stdout.write('Enter new product price: ');
        double newPrice = double.tryParse(stdin.readLineSync()!) ?? 0.0;
        manager.editProduct(index, newName, newDescription, newPrice);
        break;
      case '5':
        stdout.write('Enter product ID to delete: ');
        int index = int.tryParse(stdin.readLineSync()!) ?? -1;
        manager.deleteProduct(index);
        break;
      case '6':
        print('Exiting application.');
        return;
      default:
        print('Invalid choice. Please enter a number between 1 and 6.');
    }
  }
}
