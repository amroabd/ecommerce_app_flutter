const createTable = "CREATE TABLE IS NOT EXIT ";

Map userSchema = {
  "name": "User",
  "createTable":
      "$createTable User (id INTEGER PRIMARY KEY, name TEXT, email TEXT, status REAL)",
  "columns": ['id', 'name', 'email', 'status']
};

Map productSchema = {
  "name": "User",
  "createTable": '''$createTable  Product (id INTEGER PRIMARY KEY, 
          name TEXT NOT NULL,
          image TEXT,
          price TEXT NOT NULL,
          description TEXT)''',
  "columns": ['id', 'name', 'image', 'price', 'description']
};

Map cartSchema = {
  "name": "User",
  "createTable": '''$createTable CartProducts (id INTEGER PRIMARY KEY,
        name TEXT NOT NULL,
        image TEXT NOT NULL,
        price TEXT NOT NULL,
        quantity INTEGER NOT NULL,
        productId TEXT NOT NULL)
      ''',
  "columns": ['id', 'name', 'price', 'quantity','productId']
};
