// ignore_for_file: unnecessary_this, unnecessary_question_mark, unnecessary_new, prefer_collection_literals

class CategoriesModel {
  int? id;
  String? name;
  String? urlDisplay;
  String? logoPath;
  int? mainCategoryId;
  MainCategory? mainCategory;

  CategoriesModel(
      {this.id,
      this.name,
      this.urlDisplay,
      this.logoPath,
      this.mainCategoryId,
      this.mainCategory});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    urlDisplay = json['urlDisplay'];
    logoPath = json['logoPath'];
    mainCategoryId = json['mainCategoryId'];
    mainCategory = json['mainCategory'] != null
        ? new MainCategory.fromJson(json['mainCategory'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['urlDisplay'] = this.urlDisplay;
    data['logoPath'] = this.logoPath;
    data['mainCategoryId'] = this.mainCategoryId;
    if (this.mainCategory != null) {
      data['mainCategory'] = this.mainCategory!.toJson();
    }
    return data;
  }
}

class MainCategory {
  String? logoPath;
  String? nameAr;
  String? nameEn;
  String? urlDisplayAr;
  String? urlDisplayEn;
  Null? categoryProducts;
  Null? mainCategoryId;
  Null? mainCategory;
  Null? categoryStoreCategories;
  Null? categorySearchWords;
  int? id;
  String? createdBy;
  String? updatedBy;
  String? createdAt;
  String? updatedAt;
  bool? isDelete;
  bool? isActive;

  MainCategory(
      {this.logoPath,
      this.nameAr,
      this.nameEn,
      this.urlDisplayAr,
      this.urlDisplayEn,
      this.categoryProducts,
      this.mainCategoryId,
      this.mainCategory,
      this.categoryStoreCategories,
      this.categorySearchWords,
      this.id,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt,
      this.isDelete,
      this.isActive});

  MainCategory.fromJson(Map<String, dynamic> json) {
    logoPath = json['logoPath'];
    nameAr = json['nameAr'];
    nameEn = json['nameEn'];
    urlDisplayAr = json['urlDisplayAr'];
    urlDisplayEn = json['urlDisplayEn'];
    categoryProducts = json['categoryProducts'];
    mainCategoryId = json['mainCategoryId'];
    mainCategory = json['mainCategory'];
    categoryStoreCategories = json['categoryStoreCategories'];
    categorySearchWords = json['categorySearchWords'];
    id = json['id'];
    createdBy = json['createdBy'];
    updatedBy = json['updatedBy'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    isDelete = json['isDelete'];
    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['logoPath'] = this.logoPath;
    data['nameAr'] = this.nameAr;
    data['nameEn'] = this.nameEn;
    data['urlDisplayAr'] = this.urlDisplayAr;
    data['urlDisplayEn'] = this.urlDisplayEn;
    data['categoryProducts'] = this.categoryProducts;
    data['mainCategoryId'] = this.mainCategoryId;
    data['mainCategory'] = this.mainCategory;
    data['categoryStoreCategories'] = this.categoryStoreCategories;
    data['categorySearchWords'] = this.categorySearchWords;
    data['id'] = this.id;
    data['createdBy'] = this.createdBy;
    data['updatedBy'] = this.updatedBy;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['isDelete'] = this.isDelete;
    data['isActive'] = this.isActive;
    return data;
  }
}
