part of '_index.dart';

class ProductServ {
  void init() {
    logxx.i(ProductServ, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(ProductServ, 'rxCounter setState success');
  }
}