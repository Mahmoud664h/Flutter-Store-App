class ProductModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  double? rate;
  int? rateCount;
  ProductModel(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
      this.rate,
      this.rateCount});

  ProductModel.fromjoson(Map map) {
    id = map['id'];
    title = map['title'];
    price = map['price'];
    description = map['description'];
    category = map['category'];
    image = map['image'];
    rate = map['rating']['rate'];
    rateCount = map['rating']['count'];
  }
}
