import 'package:flutter/material.dart';
import 'package:glo_project/pages/dealership_page.dart';
import 'package:glo_project/pages/login_register/login_page.dart';
import 'package:glo_project/upgrade_page/upgrade_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 16.0,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            onDetailsPressed: (){},
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: (){},
                tooltip: "Add Photo",
                splashColor: Colors.black,
                icon: Icon(
                  Icons.add_a_photo_rounded,
                ),
              ),
            ),
            accountName: Text(
                "Tawhidur Rahman Rafid"
            ),
            accountEmail: Text(
              "rafidtawhid@gmail.com",
            ),
          ),
          ListTile(
            //tileColor: Colors.green,
            onTap: (){},
            leading: Icon(Icons.person),
            hoverColor: Colors.grey,
            title: Text("My Account"),
          ),
          Divider(),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, DealershipPage.routeName);
            },
            leading: Icon(Icons.shopping_cart_outlined),
            hoverColor: Colors.grey,
            title: Text("Dealership Account"),
          ),
          Divider(),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, UpgradePage.routeName);
            },
            leading: Icon(Icons.storefront_sharp),
            hoverColor: Colors.grey,
            title: Text("Upgrade Account"),
          ),
          Divider(),
          ListTile(
            onTap: (){},
            leading: Icon(Icons.location_on_outlined),
            hoverColor: Colors.grey,
            title: Text("Map"),
          ),
          Divider(
            thickness: 2.0,
          ),
          ListTile(
            onTap: (){},
            leading: Icon(Icons.settings),
            hoverColor: Colors.grey,
            title: Text("Settings"),
          ),
          Divider(),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, LoginPage.routeName);
            },
            leading: Icon(Icons.login),
            hoverColor: Colors.grey,
            title: Text("Login"),
          ),
        ],
      ),
    );
  }
}