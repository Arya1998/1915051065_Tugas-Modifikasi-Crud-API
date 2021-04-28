import 'package:flutter/material.dart';
import 'package:flutter_crud_api_sample_app/identitas.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('I Wayan Arya Gina Widyatmaja'),
            accountEmail: Text('arya.gina@undiksha.ac.id'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'images/arya.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('images/navigasi.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.assignment_ind_sharp),
            title: Text('My Profile'),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => MyProfile())),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.wifi_protected_setup),
            title: Text('Account Sync'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.auto_fix_high),
            title: Text('Terms and Conditions'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Security'),
            leading: Icon(Icons.admin_panel_settings),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
