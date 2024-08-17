part of '_index.dart';

class ProductDetailCtrl {
  init() {
    logxx.i(ProductDetailCtrl, '...');
    readProduct();
  }

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  readProduct() => _sv.readProduct();
}
