part of '_index.dart';

final x1Sqlite = Sqflite();

class Sqflite {
  final dbName = 'sqflite_product';
  final tbName = 'product';

  Future _createTable(Database db, int version) async {
    await db.execute(
      '''
  CREATE TABLE $tbName(
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  price INTEGER NOT NULL, 
  quantity INTEGER NOT NULL,
  created_at TEXT,
  updated_at TEXT
)
''',
    );
  }

  Future<Database> _init() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = join(dir.path, dbName);
    logx.wtf(path);
    return await openDatabase(path, version: 1, onCreate: _createTable);
  }

  Database? _db;
  Future<Database> get database async => _db ??= await _init();

  Future<void> createProduct(Product product) async {
    try {
      Database db = await database;
      await db.insert(tbName, product.toMap());
    } catch (e) {
      logx.e('this is from dt_source : "create product"');
    }
  }

  Future<List<Map<String, Object?>>> readProducts() async {
    try {
      Database db = await database;
      final x = await db.query(tbName, orderBy: 'created_at');
      logx.w(x.length.toString());
      return x;
    } catch (e) {
      logx.e('this is from dt_source : "read products"');
      rethrow;
    }
  }
}
