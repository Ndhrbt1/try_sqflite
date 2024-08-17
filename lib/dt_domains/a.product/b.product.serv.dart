part of '_index.dart';

class ProductServ {
  void init() {
    logxx.i(ProductServ, '...');
    readProducts();
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(ProductServ, 'rxCounter setState success');
  }

  Future<void> createProduct(Product product) async {
    await _rp.createProduct(product);
  }

  readProducts() {
    _pv.rxProductList.stateAsync = _rp.readProducts();
  }

  readProduct() {
    _pv.rxProductDetail.stateAsync = _rp.readProduct(_pv.rxSelectedId.st);
  }

  setSelectedId(String id) {
    _pv.rxSelectedId.refresh();
    _pv.rxSelectedId.st = id;
  }
}
