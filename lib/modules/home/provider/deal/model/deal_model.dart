class DealModel {
  DealModel.fromJson(dynamic json) {
    _id = json['id'];
    _image = json['image'];
    _time = json['time'];
    _price = json['price'];
    _oldPrice = json['old_price'];
    _quantity = json['quantity'];
    isFavorite = json['is_favorite'];
    _name = json['name'];
  }
  String? _id;
  String? _image;
  String? _time;
  String? _price;
  String? _quantity;
  String? _oldPrice;
  bool? isFavorite;
  String? _name;

  String? get id => _id;
  String? get image => _image;
  String? get time => _time;
  String? get price => _price;
  String? get quantity => _quantity;
  String? get oldPrice => _oldPrice;
  String? get name => _name;

}