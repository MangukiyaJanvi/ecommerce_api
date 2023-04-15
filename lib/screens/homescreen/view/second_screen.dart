import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/home_provider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;

  @override
  void initState() {
    super.initState();
    Provider.of<HomeProvider>(context, listen: false).getApi();
  }

  @override
  Widget build(BuildContext context) {
    homeProviderTrue = Provider.of<HomeProvider>(context, listen: true);
    homeProviderFalse = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Color(0XFF1F2140),
          title: Text(
            'Etsy Deals',
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'cart');
                },
                icon: Icon(Icons.shopping_cart),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Color(0XFF707185),
          child: Column(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0XFF1F2140),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          shape: BoxShape.circle),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/girl.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Anna Stesia",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "anna_stesia2205@gmail.com",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Color(0XFF1F2140),
                ),
                title: Text('Home'),
                trailing: Icon(Icons.navigate_next),
              ),
              ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  color: Color(0XFF1F2140),
                ),
                title: Text('My Cart'),
                trailing: Icon(Icons.navigate_next),
              ),
              ListTile(
                leading: Icon(
                  Icons.done_all_outlined,
                  color: Color(0XFF1F2140),
                ),
                title: Text('My Order'),
                trailing: Icon(Icons.navigate_next),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, 'home');
                },
                leading: Icon(
                  Icons.add_box,
                  color: Color(0XFF1F2140),
                ),
                title: Text("Add New Product"),
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
                  Icons.info,
                  color: Color(0XFF1F2140),
                ),
                title: Text('Info'),
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
                  Icons.logout,
                  color: Color(0XFF1F2140),
                ),
                title: Text('LogOut'),
                trailing: Icon(Icons.navigate_next),
              ),
              ListTile(
                leading: Icon(
                  Icons.help,
                  color: Color(0XFF1F2140),
                ),
                title: Text('Help'),
                trailing: Icon(Icons.navigate_next),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => Container(
                width: double.infinity,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0XFF1F2140), width: 2),
                ),
                child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'data', arguments: index);
                    },
                    leading: Image.asset('assets/images/mobile.jpeg'),
                    title: Text(
                        '${homeProviderTrue!.productList[index].productName}'),
                    subtitle: Text(
                        "Price : ${homeProviderTrue!.productList[index].productPrice}/off.${homeProviderTrue!.productList[index].productOffer}"),
                    trailing: Icon(
                      Icons.navigate_next,
                      size: 28,
                    )),
              ),
              itemCount: homeProviderTrue!.productList.length,
            ),
            Positioned(
              top: 630,
              left: 10,
              child: Container(
                height: 60,
                width: 340,
                decoration: BoxDecoration(
                  color: Color(0XFF193552),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0XFFFF5252),
                          ),
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          height: 4,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Color(0XFFFF5252),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFF4CAF50),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'home').then(
                            (value) => homeProviderTrue!.getApi(),
                          );
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFFA67794),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'profile');
                        },
                        icon: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
