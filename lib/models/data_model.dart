import 'package:ahd/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

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
    title: LocaleKeys.discount_code.tr(),
    storeLogo: 'assets/img/img13.svg',
    discountLabel: LocaleKeys.discount.tr(),
    isExclusive: true,
  ),
  OfferModel(
    title: LocaleKeys.discount_code.tr(),
    storeLogo: 'assets/img/img13.svg',
    discountLabel: LocaleKeys.discount.tr(),
    isExclusive: true,
  ),
  OfferModel(
    title: LocaleKeys.discount_code.tr(),
    storeLogo: 'assets/img/img13.svg',
    discountLabel: LocaleKeys.discount.tr(),
    isExclusive: true,
  ),
  OfferModel(
    title: LocaleKeys.discount_code.tr(),
    storeLogo: 'assets/img/img13.svg',
    discountLabel: LocaleKeys.discount.tr(),
    isExclusive: true,
  ),
  OfferModel(
    title: LocaleKeys.discount_code.tr(),
    storeLogo: 'assets/img/img13.svg',
    discountLabel: LocaleKeys.discount.tr(),
    isExclusive: true,
  ),
];
final List<ProductsModel> products = [
  ProductsModel(
    title: LocaleKeys.discount_code.tr(),
    storeLogo: 'assets/img/img14.jpg',
    discountLabel: LocaleKeys.discount.tr(),
    isExclusive: true,
  ),
  ProductsModel(
    title: LocaleKeys.discount_code.tr(),
    storeLogo: 'assets/img/img14.jpg',
    discountLabel: LocaleKeys.discount.tr(),
    isExclusive: true,
  ),
  ProductsModel(
    title: LocaleKeys.discount_code.tr(),
    storeLogo: 'assets/img/img14.jpg',
    discountLabel: LocaleKeys.discount.tr(),
    isExclusive: true,
  ),
  ProductsModel(
    title: LocaleKeys.discount_code.tr(),
    storeLogo: 'assets/img/img14.jpg',
    discountLabel: LocaleKeys.discount.tr(),
    isExclusive: true,
  ),
  ProductsModel(
    title: LocaleKeys.discount_code.tr(),
    storeLogo: 'assets/img/img14.jpg',
    discountLabel: LocaleKeys.discount.tr(),
    isExclusive: true,
  ),
];
final List<CouponsModel> coupons = [
  CouponsModel(
    title: LocaleKeys.discount_code.tr(),
    storeLogo: 'assets/img/80.svg',
    discountLabel: LocaleKeys.discount.tr(),
    isExclusive: true,
  ),
  CouponsModel(
    title: LocaleKeys.discount_code.tr(),
    storeLogo: 'assets/img/80.svg',
    discountLabel: LocaleKeys.discount.tr(),
    isExclusive: true,
  ),
  CouponsModel(
    title: LocaleKeys.discount_code.tr(),
    storeLogo: 'assets/img/80.svg',
    discountLabel: LocaleKeys.discount.tr(),
    isExclusive: true,
  ),
  CouponsModel(
    title: LocaleKeys.discount_code.tr(),
    storeLogo: 'assets/img/80.svg',
    discountLabel: LocaleKeys.discount.tr(),
    isExclusive: true,
  ),
  CouponsModel(
    title: LocaleKeys.discount_code.tr(),
    storeLogo: 'assets/img/80.svg',
    discountLabel: LocaleKeys.discount.tr(),
    isExclusive: true,
  ),
];

final List<String> shopLogos = [
  'assets/img/img1.svg',
  'assets/img/img2.svg',
  'assets/img/img3.svg',
  'assets/img/img4.svg',
  'assets/img/img1.svg',
  'assets/img/img2.svg',
  'assets/img/img3.svg',
  'assets/img/img4.svg',
  'assets/img/img1.svg',
  'assets/img/img2.svg',
  'assets/img/img3.svg',
  'assets/img/img4.svg',
];

final List<String> shopLogos2 = [
  'assets/img/img1.svg',
  'assets/img/img2.svg',
  'assets/img/img3.svg',
  'assets/img/img4.svg',
  'assets/img/img1.svg',
  'assets/img/img2.svg',
];

final List<Map<String, String>> categories = [
  {
    "icon": "assets/img/img10.svg",
    "name": LocaleKeys.health_and_beauty.tr(),
  },
  {
    "icon": "assets/img/img10.svg",
    "name": LocaleKeys.health_and_beauty.tr(),
  },
  {
    "icon": "assets/img/img10.svg",
    "name": LocaleKeys.health_and_beauty.tr(),
  },
  {
    "icon": "assets/img/img10.svg",
    "name": LocaleKeys.health_and_beauty.tr(),
  },
  {
    "icon": "assets/img/img10.svg",
    "name": LocaleKeys.health_and_beauty.tr(),
  },
  {
    "icon": "assets/img/img10.svg",
    "name": LocaleKeys.health_and_beauty.tr(),
  },
  {
    "icon": "assets/img/img10.svg",
    "name": LocaleKeys.health_and_beauty.tr(),
  },
  {
    "icon": "assets/img/img10.svg",
    "name": LocaleKeys.health_and_beauty.tr(),
  },
  {
    "icon": "assets/img/img10.svg",
    "name": LocaleKeys.health_and_beauty.tr(),
  },
  {
    "icon": "assets/img/img10.svg",
    "name": LocaleKeys.health_and_beauty.tr(),
  },
  {
    "icon": "assets/img/img10.svg",
    "name": LocaleKeys.health_and_beauty.tr(),
  },
  {
    "icon": "assets/img/img10.svg",
    "name": LocaleKeys.health_and_beauty.tr(),
  },
  {
    "icon": "assets/img/img10.svg",
    "name": LocaleKeys.health_and_beauty.tr(),
  },
  {
    "icon": "assets/img/img10.svg",
    "name": LocaleKeys.health_and_beauty.tr(),
  },
  {
    "icon": "assets/img/img10.svg",
    "name": LocaleKeys.health_and_beauty.tr(),
  },
  {
    "icon": "assets/img/img10.svg",
    "name": LocaleKeys.health_and_beauty.tr(),
  },
];

final List<Map<String, String>> subscriptionrecord = List.generate(
  9,
  (index) => {
    'date': '2021/10/03',
    'name': LocaleKeys.membership_name_here.tr(),
  },
);

class Country {
  final int id;
  final String name;
  final String code;
  final String logoPath;

  Country({
    required this.id,
    required this.name,
    required this.code,
    required this.logoPath,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      id: json['id'],
      name: json['name'] ?? '[]',
      code: json['code'] ?? '',
      logoPath: json['logoPath'] ?? '',
    );
  }
}
