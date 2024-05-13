import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  final List<DocumentSnapshot>? books;

  const Checkout({Key? key, this.books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Checkout"),
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {},
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (books != null && books!.isNotEmpty) ...[
                    const Text(
                      "Shopping Bag",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: books!.map((book) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildBookItem(
                              book['Title'],
                              book['Author'],
                              book['price'],
                            ),
                            const SizedBox(height: 20),
                          ],
                        );
                      }).toList(),
                    ),
                    const Divider(),
                    const SizedBox(height: 10),
                    _buildSubtotal(),
                    const SizedBox(height: 10),
                    _buildShipping(),
                    const SizedBox(height: 10),
                    _buildTotal(),
                    const SizedBox(height: 10),
                    _buildDiscountCode(),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Continue Shopping",style:TextStyle(color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff601719), // Change button color to red
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Add functionality for confirming and checking out
                          },
                          child: const Text(" Confirm & Checkout",style:TextStyle(color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff601719), // Change button color to red
                          ),
                        )
                      ],
                    ),
                  ] else ...[
                    const Text(
                      "Shopping Bag is Empty",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBookItem(String? title, String? author, String? price) {
    if (title == null || author == null || price == null) {
      return Container(); // or some placeholder widget
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Text(
          'By: $author',
          style: const TextStyle(fontSize: 12),
        ),
        Text(
          '\$$price',
          style: const TextStyle(fontSize: 12),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildSubtotal() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Subtotal:"),
        Text("\$45.96"),
      ],
    );
  }

  Widget _buildShipping() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Shipping:"),
        Text("\$5.00"),
      ],
    );
  }

  Widget _buildTotal() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Total:"),
        Text("\$50.96"),
      ],
    );
  }

  Widget _buildDiscountCode() {
    return Row(
      children: [
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              labelText: "Enter Discount Code",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            print("Discount code applied");
          },
          child: const Text("Apply"),
        ),
      ],
    );
  }
}
