class DataModel {
  final String? name;
  final String? imagePath;
  final String? description;
  final bool? showItem;
  DataModel({
    this.name,
    this.imagePath,
    this.description,
    this.showItem,
  });
}

List<DataModel> dataModel = [
  DataModel(
    name: 'المتاجر الأكثر شهرة',
    imagePath: 'img/img1.svg',
    description: 'تسوق من المتاجر الأكثر شهرة',
    showItem: true,
  ),
  DataModel(
    name: 'المتاجر الأكثر شهرة',
    imagePath: 'img/img2.svg',
    description: 'تسوق من المتاجر الأكثر شهرة',
    showItem: true,
  ),
];
