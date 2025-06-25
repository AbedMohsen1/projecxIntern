// ignore_for_file: unnecessary_this

class BestCouponsOffersModel {
  int? id;
  int? storeId;
  String? name;
  String? storeName;
  String? storeUrlDisplay;
  String? logoPath;
  String? active;
  String? exclusiveText;
  String? url;
  String? coupon;
  int? type;

  BestCouponsOffersModel(
      {this.id,
      this.storeId,
      this.name,
      this.storeName,
      this.storeUrlDisplay,
      this.logoPath,
      this.active,
      this.exclusiveText,
      this.url,
      this.coupon,
      this.type});

  BestCouponsOffersModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['storeId'];
    name = json['name'];
    storeName = json['storeName'];
    storeUrlDisplay = json['storeUrlDisplay'];
    logoPath = json['logoPath'];
    active = json['active'];
    exclusiveText = json['exclusiveText'];
    url = json['url'];
    coupon = json['coupon'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['storeId'] = this.storeId;
    data['name'] = this.name;
    data['storeName'] = this.storeName;
    data['storeUrlDisplay'] = this.storeUrlDisplay;
    data['logoPath'] = this.logoPath;
    data['active'] = this.active;
    data['exclusiveText'] = this.exclusiveText;
    data['url'] = this.url;
    data['coupon'] = this.coupon;
    data['type'] = this.type;
    return data;
  }
}
