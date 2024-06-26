import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' ;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'dart:async';

class DatabaseHelper
{
  
  static Future<Database> _openDatabase() async
  {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath,'workoutdb.db');
    return openDatabase(path,version: 1, onCreate: _createDatabase);
  }

  static Future <void> _createDatabase(Database db, int version) async
  {
    await db.execute('CREATE TABLE IF NOT EXISTS workout (id INTEGER PRIMARY KEY AUTOINCREMENT, w_name TEXT, w_desc TEXT, difficulty TEXT)');
  }

  static Future<int> insertWorkout (String wName, String wDesc, String difficulty) async
  {
    final db = await _openDatabase();
    final data = 
    {
      'w_name' : wName,'w_desc':wDesc,'difficulty':difficulty,
    };
    return await db.insert('workout', data);
  }

  static Future <List<Map<String, dynamic>>> getData() async
  {
    final db = await _openDatabase();  
    return await db.query('workout');
  }
  static Future<int> deleteWorkout(int id) async {
    final db = await _openDatabase();
    return await db.delete('workout', where: 'id = ?', whereArgs: [id]);
  }
}