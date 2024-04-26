const createTable = "CREATE TABLE IS NOT EXIT ";

Map userSchema = {
  "name": "User",
  "createTable":
      "$createTable User (id INTEGER PRIMARY KEY, name TEXT, email TEXT,password TEXT, status REAL)",
  "columns": ['id', 'name', 'email','password', 'status']
};

Map categorySchema = {
  "name": "Product",
  "createTable": '''$createTable  Category (id INTEGER PRIMARY KEY, 
          cat_name TEXT NOT NULL,
          cat_image TEXT,
          create_date TEXT ,
          description TEXT)''',
  "columns": ['id', 'cat_name', 'cat_image', 'create_date', 'description']
};

Map productSchema = {
  "name": "Product",
  "createTable": '''$createTable  Product (id INTEGER PRIMARY KEY, 
          serialId  INTEGER,  
          cat_id_fk     INTEGER ,
          prod_name TEXT NOT NULL,
          prod_qty_in INT,
          prod_unit TEXT,
          prod_price TEXT NOT NULL,
          create_date TEXT ,
          expire_date TEXT ,
          prod_image TEXT,
          upload_status INT,
          is_active INT,
          description TEXT)''',
  "columns": ['cat_id_fk','id', 'prod_name', 'prod_image', 'prod_price', 'description','prod_qty_in','prod_unit','expire_date', 'create_date']
};

Map cartSchema = {
  "name": "CartProducts",
  "createTable": '''$createTable CartProducts (id INTEGER PRIMARY KEY,
        name TEXT NOT NULL,
        image TEXT NOT NULL,
        price TEXT NOT NULL,
        quantity INTEGER NOT NULL,
        productId TEXT NOT NULL)
      ''',
  "columns": ['id', 'name', 'price', 'quantity','productId']
};
