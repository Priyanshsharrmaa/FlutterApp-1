class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "iPhone 4 Pro",
        desc: "Apple iPhone 14th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-14-pro-model-unselect-gallery-2-202209_GEO_EMEA?wid=2560&hei=1440&fmt=p-jpg&qlt=80&.v=1660753617539")
  ];

  get get => null;

  // Get Item by ID
  Item getByID(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  // Get Item by Position
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
