part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  createProduct() async {
    final product = Product.random();
    await _sv.createProduct(product);
    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, product);
    logx.i(product.toString());
  }
}
