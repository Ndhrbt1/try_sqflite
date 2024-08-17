part of '_index.dart';

abstract class Repo {
  static Injected<SampleRepo> get sample => _sampleRepo;
  static Injected<ProductRepo> get product => _productRepo;
}

final _sampleRepo = RM3.inj(SampleRepo());

final _productRepo = RM3.inj(ProductRepo());
