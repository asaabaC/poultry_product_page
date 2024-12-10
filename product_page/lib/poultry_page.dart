// lib/poultry_page.dart
import 'package:flutter/material.dart';

class PoultryPage extends StatelessWidget {
  // No need for const constructor here because of dynamic content
  PoultryPage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> poultryProducts = [
    {
      "name": "Layers",
      "image": "assets/images/hen_151155842_1000.jpg", // Replace with your image path
      "price": 12000, // Price per bird
    },
    {
      "name": "Broilers",
      "image": "assets/images/vertical-closeup-shot-brown-chicken-blurred-background_181624-35804.jpg", // Replace with your image path
      "price": 15000, // Price per bird
    },
    {
      "name": "Eggs",
      "image": "assets/images/raw-eggs-arrangement_23-2151864112.jpg", // Replace with your image path
      "price": 10000, // Price per tray
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Poultry Birds & Products'), // const can still be used here
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          // Company logo at the top
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/images/chicken-farm-banner-with-white-chicken-cartoon-character_1308-90659.jpg', // Replace with your logo path
              height: 80,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: poultryProducts.length,
                itemBuilder: (context, index) {
                  final product = poultryProducts[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    elevation: 4.0,
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(product['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product['name'],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Price: UGX ${product['price']}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
