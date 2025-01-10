import 'package:flutter/material.dart';
import 'package:shoppinh_cart/CartItem.dart';
import 'package:shoppinh_cart/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Shopping Cart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Item> items = <Item>[
    Item(name: 'iPhone 15', price: 15000),
    Item(name: 'iPhone X', price: 10000),
    Item(name: 'iPhone 11', price: 11000),
  ];

  void _clearAllAmounts() {
    setState(() {
      for (var item in items) {
        item.amount = 0;
      }
    });
  }

  double _calculateTotalPrice() {
    double totalPrice = 0;
    for (var item in items) {
      totalPrice += item.price * item.amount;
    }
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CartItem(
                      item: items[index],
                      onAmountChanged: () {
                        setState(() {});
                      },
                    ),
                    if (index < items.length - 1) Divider(),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Total Price: \$${_calculateTotalPrice()}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: _clearAllAmounts,
                  child: Text('Clear All Amounts'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
