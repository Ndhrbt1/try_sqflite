part of '_index.dart';

abstract class Data {
  static Injected<HomeData> get home => _homeData;
  static Injected<SampleSatuData> get sampleSatu => _sampleSatuData;
  static Injected<SampleDuaData> get sampleDua => _sampleDuaData;
  static Injected<SampleTigaData> get sampleTiga => _sampleTigaData;
  static Injected<ProductListData> get productList => _productListData;
  static Injected<ProductDetailData> get productDetail => _productDetailData;
  static Injected<ProductAddData> get productAdd => _productAddData;
  static Injected<ProductEditData> get productEdit => _productEditData;
}

final _homeData = RM1.inj(HomeData(), Ctrl.home.init);

final _sampleSatuData = RM1.inj(SampleSatuData(), Ctrl.sampleSatu.init);
final _sampleDuaData = RM1.inj(SampleDuaData(), Ctrl.sampleDua.init);
final _sampleTigaData = RM1.inj(SampleTigaData(), Ctrl.sampleTiga.init);

final _productListData = RM1.inj(ProductListData(), Ctrl.productList.init);
final _productDetailData = RM1.inj(ProductDetailData(), Ctrl.productDetail.init);
final _productAddData = RM1.inj(ProductAddData(), Ctrl.productAdd.init);
final _productEditData = RM1.inj(ProductEditData(), Ctrl.productEdit.init);
