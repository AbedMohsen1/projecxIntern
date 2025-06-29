// ignore_for_file: unnecessary_this

class BestProductsModel {
  int? id;
  int? storeId;
  String? name;
  String? storeName;
  String? storeUrlDisplay;
  String? logoPath;
  String? description;
  String? exclusiveText;
  String? price;
  String? discountPrice;
  String? couponText;
  String? currency;
  String? active;
  String? link;

  BestProductsModel(
      {this.id,
      this.storeId,
      this.name,
      this.storeName,
      this.storeUrlDisplay,
      this.logoPath,
      this.description,
      this.exclusiveText,
      this.price,
      this.discountPrice,
      this.couponText,
      this.currency,
      this.active,
      this.link});

  BestProductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['storeId'];
    name = json['name'];
    storeName = json['storeName'];
    storeUrlDisplay = json['storeUrlDisplay'];
    logoPath = json['logoPath'];
    description = json['description'];
    exclusiveText = json['exclusiveText'];
    price = json['price'];
    discountPrice = json['discountPrice'];
    couponText = json['couponText'];
    currency = json['currency'];
    active = json['active'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['storeId'] = this.storeId;
    data['name'] = this.name;
    data['storeName'] = this.storeName;
    data['storeUrlDisplay'] = this.storeUrlDisplay;
    data['logoPath'] = this.logoPath;
    data['description'] = this.description;
    data['exclusiveText'] = this.exclusiveText;
    data['price'] = this.price;
    data['discountPrice'] = this.discountPrice;
    data['couponText'] = this.couponText;
    data['currency'] = this.currency;
    data['active'] = this.active;
    data['link'] = this.link;
    return data;
  }
}
