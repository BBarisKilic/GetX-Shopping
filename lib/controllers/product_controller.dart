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
        productDescription: "The apple is a pome (fleshy) fruit.",
        productImage: "non",
        productName: "Apple",
      ),
      Product(
        id: 0,
        price: 29.0,
        productDescription: "The pear is a sweet, juicy fruit.",
        productImage: "non",
        productName: "Pear",
      ),
      Product(
        id: 0,
        price: 32.0,
        productDescription: "The kiwi is a fruit. It has an oval shape.",
        productImage: "non",
        productName: "Kiwi",
      ),
    ];

    products.value = productResult;
  }
}
