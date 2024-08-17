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
    final querySql = await x1Sqlite.readProducts();
    for (var p in querySql) {
      products.add(Product.fromMap(p));
    }
    return products;
  }
}
