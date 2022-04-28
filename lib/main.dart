import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flvrz/nav_drawer.dart';
// import 'package:flvrz/shopping_cart.dart';
import 'package:mysql1/mysql1.dart';
// import 'package:flvrz/mysql.dart';
// import 'package:mysql1/mysql1.dart'; Remove

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // var db = new Mysql();
  // ignore: non_constant_identifier_names
  var category_name = '';

  // MyHomePage({Key? key}) : super(key: key);
  Future main() async {
    // Open a connection (testdb should already exist)
    final connection = await MySqlConnection.connect(ConnectionSettings(
      host: '192.168.0.115',
      port: 3306,
      user: 'root',
      password: 'toor',
      db: 'flvrz',
    ));

    var results = await connection.query('select * from product_category;');
    for (var row in results) {
      print('${row[0]}');
      category_name = '1';
    }

    // Finally, close the connection
    await connection.close();

    // print(results);
  }

  // void getCat() {
  //
  //   db.getConnection().then((conn) {
  //     String sql = 'select cat_id from product_category where cat_id=1;';
  //     conn.query(sql).then((results) {
  //       for (var row in results) {
  //       // var userId = 1;
  //       // var results = conn.query('select * from product_category;');
  //       // for (var row in results) {
  //                 category_name= row[0];
  //       }
  //               // }
  //     });
  //     conn.close();
  //   });
  // }
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text('Flvrz'),
          actions: [
            // Icon(Icons.favorite),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36),
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Shopping_cart()),
                  );
                },
              ),
            ),
          ],
        ),
        body: Center(
            child: Container(
          // child: Padding(
          //   padding: const EdgeInsets.all(14.0),
          child: Column(
            children: <Widget>[
              // Text(
              //   '$category_name',
              //   style: TextStyle(color: Colors.black),
              // ),
              Card(
                child: ListTile(
                  title: Text(
                    "Mojito",
                    style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.cyanAccent, width: 5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    "Juices",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.orange, width: 5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    "Vodka",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.blue, width: 5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
            //<widget>[]
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
          ), //Column
        ) //Paddingm
            ), //Container
      );
}

class Shopping_cart extends StatelessWidget {
  const Shopping_cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text('Bill Total'),
        backgroundColor: Colors.pink,
        actions: [
          // Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 36),
            child: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Center(
          child: Container(
              child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Align(
            // alignment: Alignment.bottomCenter,
            child: Container(
              margin:
                  const EdgeInsets.only(left: 5, top: 0, right: 5, bottom: 0),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Charge'),
              ),
            ),
          ),
          // Container(
          //     height: 100,
          //     child: SingleChildScrollView(
          //         child: Text(
          //             "Long text here which is longer than the container height")
          //     )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin:
                  const EdgeInsets.only(left: 5, top: 0, right: 5, bottom: 0),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Charge'),
              ),
            ),
          )
          // ElevatedButton(
          //
          //   style: ElevatedButton.styleFrom(
          //     primary: Colors.white,
          //     minimumSize: const Size.fromHeight(50), // NEW
          //     // margin: EdgeInsets.all(30.0),
          //
          //   ),
          //   onPressed: () {},
          //   child: const Text(
          //     'Add Customer',
          //     style: TextStyle(fontSize: 22,color: Colors.pink),
          //
          //
          //   ),
          //
          // ),
        ],
      )) //Paddingm
          ),
    );
  }
}
