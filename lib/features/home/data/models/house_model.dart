class HouseModel {
  String? name;
  String? imageRaw;
  String? imageCover;
  String? address;
  String? city;
  int? bedroom;
  int? bathroom;
  String? description;
  String? profile;
  String? owner;
  List<String>? gallery;
  int? price;

  HouseModel(
      {this.name,
      this.imageRaw,
      this.imageCover,
      this.address,
      this.city,
      this.bedroom,
      this.bathroom,
      this.description,
      this.profile,
      this.owner,
      this.gallery,
      this.price});

  HouseModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    imageRaw = json['imageRaw'];
    imageCover = json['imageCover'];
    address = json['address'];
    city = json['city'];
    bedroom = json['bedroom'];
    bathroom = json['bathroom'];
    description = json['description'];
    profile = json['profile'];
    owner = json['owner'];
    gallery = json['gallery'].cast<String>();
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['imageRaw'] = imageRaw;
    data['imageCover'] = imageCover;
    data['address'] = address;
    data['city'] = city;
    data['bedroom'] = bedroom;
    data['bathroom'] = bathroom;
    data['description'] = description;
    data['profile'] = profile;
    data['owner'] = owner;
    data['gallery'] = gallery;
    data['price'] = price;
    return data;
  }
 
}
