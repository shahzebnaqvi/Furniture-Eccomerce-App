class MyItemContainerModel {
  String title;
  String price;
  String image;

  MyItemContainerModel({
    required this.title,
    required this.price,
    required this.image,
  });
}

List<MyItemContainerModel> myItemContainerModel = [
  MyItemContainerModel(
      title: "Black Simple Lamp",
      price: "\$ 12.00",
      image: "assets/Large Lamp.jpg"),
  MyItemContainerModel(
      title: "Minimal Stand",
      price: "\$ 25.00",
      image: "assets/Stand Large.png"),
  MyItemContainerModel(
      title: "StandMinimal Stand",
      price: "\$ 20.00",
      image: "assets/Large Chair.jpeg"),
  MyItemContainerModel(
      title: "Simple Desk", price: "\$ 50.00", image: "assets/Large Desk.jpg"),
];
