import 'package:get/get.dart';
import 'package:getx_shopping/models/product.dart';

class HomeController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  //simulation
  void fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    var productResult = [
      Product(
        id: 0,
        price: 40.0,
        productDescription: "some description about product ",
        productImage: "asd",
        productName: "Apple",
      ),
      Product(
        id: 0,
        price: 29.0,
        productDescription: "some description about product ",
        productImage: "asd",
        productName: "Pear",
      ),
      Product(
        id: 0,
        price: 32.9,
        productDescription: "some description about product ",
        productImage: "asd",
        productName: "Kiwi",
      ),
    ];

    products.value = productResult;
  }
}
