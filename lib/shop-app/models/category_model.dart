class Category {
  late String id;
  late String name;
  late String icon;
  late List<String> products;

  Category({
    required this.id,
    required this.name,
    required this.icon,
    required this.products
  });

  Category.fromJson(Map<String, dynamic> json) {
  id = json["id"];
  name = json["name"];
  icon = json["icon"];
  products = json["products"];
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "icon": icon,
    "products": products,
  };

}
