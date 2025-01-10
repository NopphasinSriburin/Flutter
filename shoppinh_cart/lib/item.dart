class Item {
  Item({
    required this.name,
    required this.price,
    this.amount = 1,
  });

  final String name;
  final double price;
  int amount;
}
