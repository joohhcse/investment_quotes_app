import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    // If _database is null, instantiate it
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), 'quotes_table.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        // Database creation SQL statements
        await db.execute('''
          CREATE TABLE quotes_table (
            id INTEGER PRIMARY KEY,
            name TEXT
          )
        ''');
      },
    );
  }

  Future<void> insertData(Map<String, dynamic> data) async {
    final Database db = await database;
    await db.insert('quotes_table', data,
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Map<String, dynamic>>> fetchData() async {
    final Database db = await database;
    return await db.query('quotes_table');
  }

  Future<void> updateData(Map<String, dynamic> data) async {
    final Database db = await database;
    await db.update('quotes_table', data,
        where: 'id = ?', whereArgs: [data['id']]);
  }

  Future<void> deleteData(int id) async {
    final Database db = await database;
    await db.delete('quotes_table', where: 'id = ?', whereArgs: [id]);
  }
}
