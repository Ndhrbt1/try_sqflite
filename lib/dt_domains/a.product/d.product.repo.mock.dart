part of '_index.dart';

class ProductRepoMock implements ProductRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from ProductRepoMock');
    return x;
  }

  @override
  Future<void> createProduct(Product product) {
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> readProducts() {
    throw UnimplementedError();
  }
}
