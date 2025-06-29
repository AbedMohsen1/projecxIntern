import 'package:ahd/models/home/most_popular_stores.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ahd/providers/homeprovider.dart';

class MostPopularStoresHome extends StatefulWidget {
  const MostPopularStoresHome({super.key});

  @override
  State<MostPopularStoresHome> createState() => _MostPopularStoresHomeState();
}

class _MostPopularStoresHomeState extends State<MostPopularStoresHome> {
  late Future<List<MostPopularStoresModel>> _futureStores;

  @override
  void initState() {
    super.initState();
    _futureStores = _getStores();
  }

  Future<List<MostPopularStoresModel>> _getStores() async {
    final provider = Provider.of<HomeProvider>(context, listen: false);
    return await provider.getMostPopularStores();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MostPopularStoresModel>>(
      future: _futureStores,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox(
            height: 100,
            child: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasError ||
            !snapshot.hasData ||
            snapshot.data!.isEmpty) {
          return const SizedBox(
            height: 100,
            child: Center(child: Text('لا يوجد متاجر')),
          );
        }

        final stores = snapshot.data!;
        return SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: stores.length,
            itemBuilder: (context, index) {
              final store = stores[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
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
        );
      },
    );
  }
}
