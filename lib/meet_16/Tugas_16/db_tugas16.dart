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

  static Future<void> updateData(ModelTugas modeltugas) async {
    final db = await DbTugas16.dbTugas();
    await db.update(
      'tugas',
      modeltugas.toMap(),
      where: 'id = ?',
      whereArgs: [modeltugas.id],
    );
  }

  static Future<void> deleteData(int id) async {
    final db = await DbTugas16.dbTugas();
    await db.delete('tugas', where: 'id = ?', whereArgs: [id]);
  }
}
