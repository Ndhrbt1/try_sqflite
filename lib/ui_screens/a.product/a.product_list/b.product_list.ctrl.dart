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

  updateProduct(String id, String createdAt) async {
    final product = Product.updateValue(id, createdAt);
    await _sv.updateProduct(product, id);
    _pv.rxProductList.setState((s) {
      final index = s.indexWhere((element) => element.id == id);
      return s[index] = product;
    });
    logx.i(product.toString());
  }

  setSelectedId(String id) {
    _sv.setSelectedId(id);
    nav.to(Routes.productDetail);
  }

  removeById(String id) {
    _sv.deleteProduct(id);
    _dt.rxProductList.st = [..._dt.rxProductList.st]..removeWhere((item) => item.id == id);
  }
}
