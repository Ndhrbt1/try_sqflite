part of '_index.dart';

abstract class Prov {
  static Injected<SampleProv> get sample => _sampleProv;
  static Injected<ProductProv> get product => _productProv;
}

final _sampleProv = RM2.inj(SampleProv());

final _productProv = RM2.inj(ProductProv());
