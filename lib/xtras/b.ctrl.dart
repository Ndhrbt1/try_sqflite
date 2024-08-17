part of '_index.dart';

abstract class Ctrl {
  static HomeCtrl get home => HomeCtrl();
  static SampleSatuCtrl get sampleSatu => SampleSatuCtrl();
  static SampleDuaCtrl get sampleDua => SampleDuaCtrl();
  static SampleTigaCtrl get sampleTiga => SampleTigaCtrl();
  static ProductListCtrl get productList => ProductListCtrl();
  static ProductDetailCtrl get productDetail => ProductDetailCtrl();
  static ProductAddCtrl get productAdd => ProductAddCtrl();
  static ProductEditCtrl get productEdit => ProductEditCtrl();
}
