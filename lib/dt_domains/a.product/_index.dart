import 'dart:math';

import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.product.prov.dart';
part 'b.product.serv.dart';
part 'c.product.repo.dart';
part 'd.product.repo.mock.dart';

ProductProv get _pv => Prov.product.st;
ProductServ get _sv => Serv.product;
ProductRepo get _rp => Repo.product.st;
