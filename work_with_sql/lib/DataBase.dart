import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:work_with_sql/DataBase.dart';

import 'People.dart';

class DataBase{
  Future<Database> initializeDB() async{
    String path = await getDatabasesPath();

    return openDatabase(
      join(path, 'people.db'),
      onCreate: (db, version){
        return db.execute(
          "CREATE TABLE people(id INTEGER PRIMARY KEY, name TEXT, age INTEGER, email TEXT, phone TEXT)"
        );
      },
      version: 1
    );
  }

  Future<int> insert(People people) async{
    Database db = await initializeDB();
    return await db.insert('people', people.toMap());
  }

  Future<List<People>> getPeople() async{
    Database db = await initializeDB();
    List<Map<String, dynamic>> maps = await db.query('people');
    return List.generate(maps.length, (i){
      return People.inicializetedFast(
        maps[i]['id'],
        maps[i]['name'],
        maps[i]['age'],
        maps[i]['email'],
        maps[i]['phone']
      );
    });
  }

  Future<int> update(People people) async{
    Database db = await initializeDB();
    return await db.update(
      'people',
      people.toMap(),
      where: "id = ?",
      whereArgs: [people.id]
    );
  }

  Future<void> delete(int id) async{
    Database db = await initializeDB();
    await db.delete(
      'people',
      where: "id = ?",
      whereArgs: [id]
    );
  }
}