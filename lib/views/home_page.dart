import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_shopping/controllers/product_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<HomeController>(
                builder: (controller) => ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, count) {
                    return Card(
                      margin: const EdgeInsets.all(12.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${controller.products[count].productName}",
                                      style: TextStyle(fontSize: 24.0),
                                    ),
                                    Text(
                                      "${controller.products[count].productDescription}",
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  ],
                                ),
                                Text(
                                  "\$${controller.products[count].price}",
                                  style: TextStyle(fontSize: 24.0),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                              ),
                              child: Text(
                                'Add to Cart',
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Text("Total amount: "),
            SizedBox(
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
