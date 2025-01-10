import 'package:flutter/material.dart';
import 'package:shoppinh_cart/item.dart';

class CartItem extends StatefulWidget {
  final Item item;
  final VoidCallback onAmountChanged;

  CartItem({
    super.key,
    required this.item,
    required this.onAmountChanged,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void _clearAmount() {
    setState(() {
      widget.item.amount = 0;
      widget.onAmountChanged();
      print('Amount cleared: ${widget.item.amount}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.item.name,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      'Price: \$${widget.item.price}',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Text(
                      'Total Price: \$${widget.item.price * widget.item.amount}',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          if (widget.item.amount > 0) {
                            widget.item.amount--;
                            widget.onAmountChanged();
                          }
                        });
                        print('Quantity decreased: ${widget.item.amount}');
                      },
                    ),
                    Text(
                      '${widget.item.amount}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          widget.item.amount++;
                          widget.onAmountChanged();
                        });
                        print('Quantity increased: ${widget.item.amount}');
                      },
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: _clearAmount,
              child: Text('Clear Amount'),
            ),
          ],
        ),
      ),
    );
  }
}
