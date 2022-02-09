import 'package:diary/models/diary.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DiaryDatabase {
  final databaseName = 'Diary';

  // method to initialize the diary database
  Future<Database> _initDatabase() async {
    // Get a location using getDatabasesPath
    var _databasePath = await getDatabasesPath();
    String _path = join(_databasePath, 'diary.db');
    // open the database
    Database _database = await openDatabase(_path, version: 1, onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute('CREATE TABLE $databaseName (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, description TEXT)');
    });
    return _database;
  }

  // method to insert new record in database
  void _insertRecord(Database database, Diary diary) async {
    await database.insert(
      databaseName,
      diary.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // method to update some record in database
  void _updateRecord(Database database, int id, Diary diary) async {
    await database.update(
      databaseName,
      diary.toMap(),
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // method to delete a record in the database using the id
  void _deleteRecord(Database database, int id) async {
    await database.delete(
      databaseName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // method to delete the diary database
  void _deleteDatabase(String path) async {
    await deleteDatabase(path);
  }

  // method to close the database
  void _closeDatabase(Database database) async {
    await database.close();
  }
}
