part of '_index.dart';

Future<void> inits() async {
  logx.wtf('inits start');

  WidgetsFlutterBinding.ensureInitialized();

  Serv.sample.init();
  Serv.product.init();

  logx.wtf('inits success');
}
