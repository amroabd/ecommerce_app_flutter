import 'package:ecommerce_app/core/util/log.dart';
import 'package:ecommerce_app/data/source/local/entities.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
// Get a location using getDatabasesPath
// var databasesPath =  getDatabasesPath();
  static final DbHelper getInstance = DbHelper();

  static Database? _mDb;

  static Future<Database> get mDb async {
    if (_mDb != null) return _mDb!;
    _mDb = await openDb();
    return _mDb!;
  }

  // open the database
  static Future<Database> openDb() async {
    String path = join(await getDatabasesPath(), 'my_ecommerce_db.db');
    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await createTables(db);
      Log.printInfo('DbHelper=> created tables db');
    });
    return database;
  }

  static Future<void> createTables(Database db) async {
    // When creating the db, create the table
    await db.execute(userSchema['createTable']);
    await db.execute(productSchema['createTable']);
    await db.execute(cartSchema['createTable']);
  }

  ///insert new row to any table press in parameter
  ///nameTable: name table that insert new data
  ///values: {column_name:value} Map<String,Object?>
  ///example:values:  {'name': 'ali', 'birthdate':'1999-09-09', 'phone':7778888}
  static Future<int> insert(
      String nameTable, Map<String, Object> values) async {
    //open db
    final Database database = await mDb;
    //process insert
    final int currentId = await database.insert(nameTable, values,
        conflictAlgorithm: ConflictAlgorithm.replace);
    //return id of the last inserted row.
    return currentId;
  }

  ///update rows to any table press in parameter
  ///nameTable: name table that update
  ///values: {column_name:value} Map<String,Object?>
  ///example:values:  {'name': 'ali', 'birthdate':'1999-09-09', 'phone':7778888}
  ///where: ' id = ? AND name = ? '
  ///whereArgs: [1,'ali']
  static Future<int> update(nameTable, values, where, whereArgs) async {
    //open db
    final Database database = await mDb;
    //process update
    final int count = await database.update(nameTable, values,
        where: where,
        whereArgs: whereArgs,
        conflictAlgorithm: ConflictAlgorithm.replace);
    //Returns the number of changes made.
    //يرجع عدد التغييرات التي تم اجراؤها
    return count;
  }

/*
 listData:[
       {'id':1,'name':"ali ahmed",'birthdate':"1999-09-09",'phone':778887777},//map
       {'id':1,'name':"ala ahmed",'birthdate':"1990-09-09",'phone':718887777},//map
      ]
 */

  ///sql:'SELECT * FROM users WHERE id=?' OR 'SELECT * FROM users WHERE id=1'
  ///args: [1] OR without pass args
  static Future<List<Map>> getAllData(String sql, [args]) async {
    //open db
    final Database database = await mDb;
    //Executes query and returns a list of the rows
    List<Map> dataList = await database.rawQuery(sql, args);
    //returns a list of the rows
    return dataList;
  }

  /// cols:['id', 'name', 'age']
  /// where: 'id= ?'
  static Future<List<Map>> getById(nameTable, cols, where, int id) async {
    //open db
    final Database db = await mDb;
    //
    List<Map> maps =
        await db.query(nameTable, columns: cols, where: where, whereArgs: [id]);
    return maps;
  }

/*   Future<int> _rawInsert(String name, int value, num score) async {
    final db = await openDb();
    return await db.transaction((txn) async {
      int id1 = await txn.rawInsert(
          'INSERT INTO User(name, phone, score) VALUES("some name", 1234, 456.789)');
      Log.printInfo('inserted1: $id1');
      id1 = await txn.rawInsert(
          'INSERT INTO User(name, phone, score) VALUES(?, ?, ?)',
          [name, value, 3.1416]);
      Log.printInfo('inserted2: $id1');
      return id1;
    });
  }
   List<User> _fromMaps(List<Map> maps) {
    final List<User> mList = [];
    for (Map mp in maps) {
      mList.add(User.name(id: mp['id'], firstname: mp['name'], age: mp['age']));
    }
    return mList;
  }
   Future<List<User>> _getUsers() async {
    final Database db = await openDb();
    List<Map> maps = await db.query(
      'User',
      columns: ['id', 'name', 'age'],
      orderBy: 'id',
    );
    Log.printInfo(maps.toString());
    return (maps.map((element) => User.fromMap(element)).toList());
  }*/
}
