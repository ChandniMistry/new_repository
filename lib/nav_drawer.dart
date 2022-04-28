import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(


        children: <Widget>[

          // DrawerHeader(
          //
          //   child: Text(
          //     'Flvrz',
          //     style: TextStyle(color: Colors.white, fontSize: 30 ),
          //   ),
          //
          // ),

          ListTile(
            title: Text('Flvrz',style: TextStyle(color: Colors.pink,fontSize: 45),
            ),


          ),
          // ListTile(
          //   leading: Icon(Icons.app_registration_rounded, color: Colors.white),
          //   title: Text('Register',style: TextStyle(color: Colors.white,fontSize: 20)),
          //   onTap: () => {},
          // ),
          ListTile(
            leading: Icon(Icons.manage_accounts, color: Colors.white),
            title: Text('Manager Dashboard',style: TextStyle(color: Colors.white,fontSize: 20)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.note, color: Colors.white),
            title: Text('Packed Bills',style: TextStyle(color: Colors.white,fontSize: 20)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color, color: Colors.white),
            title: Text('Transactions',style: TextStyle(color: Colors.white,fontSize: 20)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text('Settings',style: TextStyle(color: Colors.white,fontSize: 20)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.white),
            title: Text('Exit',style: TextStyle(color: Colors.white,fontSize: 20)),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}