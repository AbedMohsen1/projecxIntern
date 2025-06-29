import 'package:ahd/Theme/failure.dart';
import 'package:ahd/models/home/most_popular_stores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:ahd/providers/homeprovider.dart';

class MostPopularStoresHome extends StatefulWidget {
  const MostPopularStoresHome({super.key});

  @override
  State<MostPopularStoresHome> createState() => _MostPopularStoresHomeState();
}

class _MostPopularStoresHomeState extends State<MostPopularStoresHome> {
  late Future _futureStores;

  @override
  void initState() {
    super.initState();
    _futureStores = _getStores();
  }

  Future _getStores() async {
    final provider = Provider.of<HomeProvider>(context, listen: false);
    return await provider.getMostPopularStores();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _futureStores,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SizedBox(
            height: 50,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        }
        if (snapshot.hasData) {
          if (snapshot.data is Failure) {
            return Center(child: Text(snapshot.data.toString()));
          }
          final provider = Provider.of<HomeProvider>(context);

          //
          //  print("snapshot data is ${snapshot.data}");
          var getStores = provider.mostPopularStoresList;
          return getStores.isNotEmpty
              ? SizedBox(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: getStores.length,
                    itemBuilder: (context, index) {
                      final store = getStores[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: store.logoPath?.contains('svg') == true
                              ? SvgPicture.network(
                                  store.logoPath ?? '',
                                  height: 50,
                                )
                              : Image.network(
                                  store.logoPath ?? '',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.contain,
                                  errorBuilder: (_, __, ___) =>
                                      const Icon(Icons.broken_image, size: 50),
                                ),
                        ),
                      );
                    },
                  ),
                )
              : SizedBox(
                  height: 100,
                  child: const Center(
                    child: Opacity(opacity: 0.5, child: Text('empty')),
                  ),
                );
        }
        return Container();
      },
    );
    // FutureBuilder<List<MostPopularStoresModel>>(
    //   future: _futureStores,
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return const SizedBox(
    //         height: 100,
    //         child: Center(child: CircularProgressIndicator()),
    //       );
    //     } else if (snapshot.hasError) {
    //       return const SizedBox(
    //         height: 100,
    //         child: Center(child: Text('لا يوجد متاجر')),
    //       );
    //     }

    //     final stores = storeProvider.mostPopularStoresList;
    //     return SizedBox(
    //       height: 80,
    //       child: ListView.builder(
    //         scrollDirection: Axis.horizontal,
    //         itemCount: stores.length,
    //         itemBuilder: (context, index) {
    //           final store = stores[index];
    //           return Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 8),
    //             child: ClipRRect(
    //               borderRadius: BorderRadius.circular(12),
    //               child: Image.network(
    //                 store.logoPath ?? '',
    //                 width: 100,
    //                 height: 100,
    //                 fit: BoxFit.contain,
    //                 errorBuilder: (_, __, ___) =>
    //                     const Icon(Icons.broken_image, size: 50),
    //               ),
    //             ),
    //           );
    //         },
    //       ),
    //     );
    //   },
    // );
  }
}
