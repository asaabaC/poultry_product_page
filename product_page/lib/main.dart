import 'package:flutter/material.dart';

class PoultryPage extends StatelessWidget {
  final List<Map<String, dynamic>> poultryProducts = [
    {
      "name": "Layers",
      "image": "assets/hen_151155842_1000.jpg", // Correct path
      "price": 12000, // Price per bird
    },
    {
      "name": "Broilers",
      "image": "assets/vertical-closeup-shot-brown-chicken-blurred-background_181624-35804.jpg", // Correct path
      "price": 15000, // Price per bird
    },
    {
      "name": "Eggs",
      "image": "assets/raw-eggs-arrangement_23-2151864112.jpg", // Correct path
      "price": 10000, // Price per tray
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Poultry Birds & Products'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          // Company logo at the top
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/chicken-farm-banner-with-white-chicken-cartoon-character_1308-90659.jpg', // Correct path
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
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Price: UGX ${product['price']}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[700],
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

void main() {
  runApp(MaterialApp(
    home: PoultryPage(),
    debugShowCheckedModeBanner: false, // Debug mode icon removed
    theme: ThemeData(
      primaryColor: Colors.orange,
      appBarTheme: AppBarTheme(
        color: Colors.orange, // App theme color set to orange
      ),
    ),
  ));
}
