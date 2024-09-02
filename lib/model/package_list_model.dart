class PackageModel {
  String? title;
  String? price;
  String? desc;

  PackageModel({this.title, this.price, this.desc});

  factory PackageModel.fromJson(Map<String, dynamic> json) {
    return PackageModel(
      title: json['title'],
      price: json['price'],
      desc: json['desc'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'price': price,
      'desc': desc,
    };
  }
}
