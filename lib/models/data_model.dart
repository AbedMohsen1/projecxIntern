class OfferModel {
  final String title;
  final String storeLogo;
  final String discountLabel;
  final bool isExclusive;

  OfferModel({
    required this.title,
    required this.storeLogo,
    required this.discountLabel,
    this.isExclusive = false,
  });
}

class ProductsModel {
  final String title;
  final String storeLogo;
  final String discountLabel;
  final bool isExclusive;

  ProductsModel({
    required this.title,
    required this.storeLogo,
    required this.discountLabel,
    this.isExclusive = false,
  });
}

class CouponsModel {
  final String title;
  final String storeLogo;
  final String discountLabel;
  final bool isExclusive;

  CouponsModel({
    required this.title,
    required this.storeLogo,
    required this.discountLabel,
    this.isExclusive = false,
  });
}

final List<OfferModel> offers = [
  OfferModel(
    title: 'احصل 2021 كود خصم كارفور السعودية \n ر.س على 10 + خصم 80 على خصم %',
    storeLogo: 'img/img13.svg',
    discountLabel: '%80 خصم',
    isExclusive: true,
  ),
  OfferModel(
    title: 'احصل 2021 كود خصم كارفور السعودية \n ر.س على 10 + خصم 80 على خصم %',
    storeLogo: 'img/img13.svg',
    discountLabel: '%80 خصم',
    isExclusive: true,
  ),
  OfferModel(
    title: 'احصل 2021 كود خصم كارفور السعودية \n ر.س على 10 + خصم 80 على خصم %',
    storeLogo: 'img/img13.svg',
    discountLabel: '%80 خصم',
    isExclusive: true,
  ),
  OfferModel(
    title: 'احصل 2021 كود خصم كارفور السعودية \n ر.س على 10 + خصم 80 على خصم %',
    storeLogo: 'img/img13.svg',
    discountLabel: '%80 خصم',
    isExclusive: true,
  ),
  OfferModel(
    title: 'احصل 2021 كود خصم كارفور السعودية \n ر.س على 10 + خصم 80 على خصم %',
    storeLogo: 'img/img13.svg',
    discountLabel: '%80 خصم',
    isExclusive: true,
  ),
];
final List<ProductsModel> products = [
  ProductsModel(
    title: 'احصل 2021 كود خصم كارفور السعودية \n ر.س على 10 + خصم 80 على خصم %',
    storeLogo: 'img/img14.jpg',
    discountLabel: '%80 خصم',
    isExclusive: true,
  ),
  ProductsModel(
    title: 'احصل 2021 كود خصم كارفور السعودية \n ر.س على 10 + خصم 80 على خصم %',
    storeLogo: 'img/img14.jpg',
    discountLabel: '%80 خصم',
    isExclusive: true,
  ),
  ProductsModel(
    title: 'احصل 2021 كود خصم كارفور السعودية \n ر.س على 10 + خصم 80 على خصم %',
    storeLogo: 'img/img14.jpg',
    discountLabel: '%80 خصم',
    isExclusive: true,
  ),
  ProductsModel(
    title: 'احصل 2021 كود خصم كارفور السعودية \n ر.س على 10 + خصم 80 على خصم %',
    storeLogo: 'img/img14.jpg',
    discountLabel: '%80 خصم',
    isExclusive: true,
  ),
  ProductsModel(
    title: 'احصل 2021 كود خصم كارفور السعودية \n ر.س على 10 + خصم 80 على خصم %',
    storeLogo: 'img/img14.jpg',
    discountLabel: '%80 خصم',
    isExclusive: true,
  ),
];
final List<CouponsModel> coupons = [
  CouponsModel(
    title: 'احصل 2021 كود خصم كارفور السعودية \n ر.س على 10 + خصم 80 على خصم %',
    storeLogo: 'img/80.svg',
    discountLabel: '%80 خصم',
    isExclusive: true,
  ),
  CouponsModel(
    title: 'احصل 2021 كود خصم كارفور السعودية \n ر.س على 10 + خصم 80 على خصم %',
    storeLogo: 'img/80.svg',
    discountLabel: '%80 خصم',
    isExclusive: true,
  ),
  CouponsModel(
    title: 'احصل 2021 كود خصم كارفور السعودية \n ر.س على 10 + خصم 80 على خصم %',
    storeLogo: 'img/80.svg',
    discountLabel: '%80 خصم',
    isExclusive: true,
  ),
  CouponsModel(
    title: 'احصل 2021 كود خصم كارفور السعودية \n ر.س على 10 + خصم 80 على خصم %',
    storeLogo: 'img/80.svg',
    discountLabel: '%80 خصم',
    isExclusive: true,
  ),
  CouponsModel(
    title: 'احصل 2021 كود خصم كارفور السعودية \n ر.س على 10 + خصم 80 على خصم %',
    storeLogo: 'img/80.svg',
    discountLabel: '%80 خصم',
    isExclusive: true,
  ),
];

final List<String> shopLogos = [
  'img/img1.svg',
  'img/img2.svg',
  'img/img3.svg',
  'img/img4.svg',
  'img/img1.svg',
  'img/img2.svg',
  'img/img3.svg',
  'img/img4.svg',
  'img/img1.svg',
  'img/img2.svg',
  'img/img3.svg',
  'img/img4.svg',
];

final List<String> shopLogos2 = [
  'img/img1.svg',
  'img/img2.svg',
  'img/img3.svg',
  'img/img4.svg',
  'img/img1.svg',
  'img/img2.svg',
];

final List<Map<String, String>> categories = [
  {"icon": "img/img10.svg", "name": "الصحة والجمال"},
  {"icon": "img/img10.svg", "name": "الصحة والجمال"},
  {"icon": "img/img10.svg", "name": "الصحة والجمال"},
  {"icon": "img/img10.svg", "name": "الصحة والجمال"},
  {"icon": "img/img10.svg", "name": "الصحة والجمال"},
  {"icon": "img/img10.svg", "name": "الصحة والجمال"},
  {"icon": "img/img10.svg", "name": "الصحة والجمال"},
  {"icon": "img/img10.svg", "name": "الصحة والجمال"},
  {"icon": "img/img10.svg", "name": "الصحة والجمال"},
  {"icon": "img/img10.svg", "name": "الصحة والجمال"},
  {"icon": "img/img10.svg", "name": "الصحة والجمال"},
  {"icon": "img/img10.svg", "name": "الصحة والجمال"},
  {"icon": "img/img10.svg", "name": "الصحة والجمال"},
  {"icon": "img/img10.svg", "name": "الصحة والجمال"},
  {"icon": "img/img10.svg", "name": "الصحة والجمال"},
  {"icon": "img/img10.svg", "name": "الصحة والجمال"},
];

final List<Map<String, String>> subscriptionrecord = List.generate(
  9,
  (index) => {
    'date': '2021/10/03',
    'name': 'اسم العضوية هنا',
  },
);
