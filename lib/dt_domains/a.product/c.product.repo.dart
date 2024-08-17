part of '_index.dart';

class ProductRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from ProductRepo');
    return x;
  }

  Future<void> createProduct(Product product) async {
    await x1Sqlite.createProduct(product);
  }

  Future<List<Product>> readProducts() async {
    List<Product> products = [];
    final querySql = await x1Sqlite.readProductList();
    for (var p in querySql) {
      products.add(Product.fromMap(p));
    }
    return products;
  }

  Future<Product> readProduct(String id) async {
    List<Product> products = [];
    final querySql = await x1Sqlite.readProductDetail(id);
    for (var p in querySql) {
      products.add(Product.fromMap(p));
    }
    final index = products.indexWhere((element) => element.id == _pv.rxSelectedId.st);
    return products[index];
  }
}
