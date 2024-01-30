import 'package:path/path.dart';
import 'package:investment_quotes_app/model/quote.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConfig{
  static final DatabaseConfig _database = DatabaseConfig._internal();
  late Future<Database> database;
  factory DatabaseConfig() => _database;

  DatabaseConfig._internal() {
    databaseInit();
  }

  Future<bool> databaseInit() async {
    try {
      database = openDatabase(
        join(await getDatabasesPath(), 'quote_database.db'),
        onCreate: (db, version) {
          return db.execute(
            'CREATE TABLE quote(id INTEGER PRIMARY KEY, quote TEXT, isLiked INTEGER)',
          );
        },
        version: 1,
      );

      print('database Init!!');

      return true;
    } catch (err) {
      print(err.toString());

      return false;
    }
  }

  Future<Quote> selectQuote(int isLiked) async {
    final Database db = await database;

    final List<Map<String, dynamic>> data =
        await db.query('quote', where: "isLiked = ?", whereArgs: [isLiked]);

    return Quote(
        id: data[0]['id'], quote: data[0]['quote'], isLiked: data[0]['isLiked']);
  }
}
