class MyListTileModel {
  String title;
  String subtitle;
  String image;
  MyListTileModel(
      {required this.title, required this.subtitle, required this.image});
}

List<MyListTileModel> myListTileModel = [
  MyListTileModel(
      title: "Coffee Table", subtitle: "\$ 50.00", image: "assets/Table.png"),
  MyListTileModel(
      title: "Coffee Chair", subtitle: "\$ 20.00", image: "assets/Chair.png"),
  MyListTileModel(
      title: "Minimal Stand", subtitle: "\$ 25.00", image: "assets/Stand.png"),
  MyListTileModel(
      title: "Minimal Desk", subtitle: "\$ 50.00", image: "assets/Desk.png"),
  MyListTileModel(
      title: "Minimal Lamp", subtitle: "\$ 12.00", image: "assets/Lamp.png"),
];
