import 'package:path/path.dart';
import 'package:ppkd_anwar/meet_16/Tugas_16/model_tugas.dart';
import 'package:sqflite/sqflite.dart';

class DbTugas16 {
  static Future<Database> dbTugas() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'tugas.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE tugas (id INTEGER PRIMARY KEY AUTOINCREMENT,nama TEXT,umur INTEGER,kondisi TEXT)',
        );
      },
      version: 1,
    );
  }

  static Future<void> insertTugas(ModelTugas modeltugas) async {
    final db = await DbTugas16.dbTugas();
    await db.insert(
      'tugas',
      modeltugas.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<ModelTugas>> getModelTugas() async {
    final db = await DbTugas16.dbTugas();
    final List<Map<String, dynamic>> maps = await db.query('tugas');

    return List.generate(maps.length, (i) => ModelTugas.fromMap(maps[i]));
  }
}
