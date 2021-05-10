import 'package:get/get.dart';
import 'package:getx_shopping/models/product.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;

  double get totalAmount =>
      cartItems.fold(0, (sum, current) => sum + current.price);

  addToCart(Product product) {
    cartItems.add(product);
  }
}
