import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Color(0XFF1F2140),
          title: Text(
            'Your Profile',
          ),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.only(right: 10,left: 5),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 2,
                  offset: Offset(5, -5),
                ),
              ],
              borderRadius: BorderRadius.circular(30),
              color: Color(0XFF707185),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1.4,
                      color: Color(0XFF1F2140),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/girl.jpg'),
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  "Anna Stesia",
                  style: TextStyle(
                      color: Color(0XFF1F2140),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5,),
                Text("anna_stesia2205@gmail.com"),
                ListTile(
                  leading: Icon(
                    Icons.done_all_outlined,
                    color: Colors.green,
                  ),
                  title: Text('Your Orders'),
                  trailing: Icon(Icons.navigate_next),
                ),
                ListTile(
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.deepOrange,
                  ),
                  title: Text('Want To Place Order'),
                  trailing: Icon(Icons.navigate_next),
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Color(0XFF1F2140),
                  ),
                  title: Text('Account'),
                  trailing: Icon(Icons.navigate_next),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Color(0XFF1F2140),
                  ),
                  title: Text('Settings'),
                  trailing: Icon(Icons.navigate_next),
                ),
                ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Color(0XFF1F2140),
                  ),
                  title: Text('Info'),
                  trailing: Icon(Icons.navigate_next),
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Color(0XFF1F2140),
                  ),
                  title: Text('LogOut'),
                  trailing: Icon(Icons.navigate_next),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
