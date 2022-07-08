class CategoryModel {
  CategoryModel({
      String? id, 
      String? name, 
      String? image,}){
    _id = id;
    _name = name;
    _image = image;
}

  CategoryModel.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _image = json['image'];
  }
  String? _id;
  String? _name;
  String? _image;

  String? get id => _id;
  String? get name => _name;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['image'] = _image;
    return map;
  }

}