class MyCartModel {
  String image;
  String title;
  String price;
  int quantity;

  MyCartModel({
    required this.image,
    required this.title,
    required this.price,
    required this.quantity,
  });
}

List<MyCartModel> myCartModel = [
  MyCartModel(
      quantity: 0,
      title: "Coffee Table",
      price: "\$ 50.00",
      image: "assets/Table.png"),
  MyCartModel(
      quantity: 0,
      title: "Coffee Chair",
      price: "\$ 20.00",
      image: "assets/Chair.png"),
  MyCartModel(
      quantity: 0,
      title: "Minimal Stand",
      price: "\$ 25.00",
      image: "assets/Stand.png"),
];
