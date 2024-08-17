part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    Routes.home: (RouteData data) => const HomeView(),
    Routes.sampleSatu: (RouteData data) => const SampleSatuView(),
    Routes.sampleDua: (RouteData data) => const SampleDuaView(),
    Routes.sampleTiga: (RouteData data) => const SampleTigaView(),
    Routes.productList: (RouteData data) => const ProductListView(),
    Routes.productDetail: (RouteData data) => const ProductDetailView(),
    Routes.productAdd: (RouteData data) => const ProductAddView(),
    Routes.productEdit: (RouteData data) => const ProductEditView(),
  };
}
