import 'package:flutter/material.dart';
import 'package:get/get.dart';

Color ContainerColor = Color.fromARGB(255, 35, 34, 49);

void main() {
  runApp(
    ewalle(),
  );
}

class ewalle extends StatefulWidget {
  const ewalle({Key? key}) : super(key: key);

  @override
  State<ewalle> createState() => _ewalleState();
}

class _ewalleState extends State<ewalle> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "eWalle",
              style: TextStyle(fontSize: 30),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.adjust),
                onPressed: () {
                  Get.isDarkMode
                      ? Get.changeTheme(
                          ThemeData.light().copyWith(
                            scaffoldBackgroundColor: Colors.white,
                            appBarTheme: AppBarTheme(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              elevation: 0,
                            ),
                            textTheme: TextTheme(
                              headline1: TextStyle(color: Colors.black),
                              headline2: TextStyle(color: Colors.black),
                              bodyText2: TextStyle(color: Colors.black),
                              subtitle1: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      : Get.changeTheme(
                          ThemeData.dark().copyWith(
                              scaffoldBackgroundColor: Color(0xFF0A0E21),
                              textTheme: TextTheme(
                                headline1: TextStyle(color: Colors.white),
                                headline2: TextStyle(color: Colors.white),
                                bodyText2: TextStyle(color: Colors.white),
                                subtitle1: TextStyle(color: Colors.white),
                              ),
                              appBarTheme: AppBarTheme(
                                foregroundColor: Colors.white,
                                backgroundColor: Color(0xFF0A0E21),
                                elevation: 0,
                              )),
                        );
                  setState(() {
                    if (ContainerColor == Color.fromARGB(255, 35, 34, 49)) {
                      ContainerColor = Color.fromARGB(255, 243, 244, 248);
                    } else {
                      ContainerColor = Color.fromARGB(255, 35, 34, 49);
                    }
                  });
                },
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.account_tree,
                    size: 26,
                  ),
                ),
              )
            ],
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: Row(
                    children: [
                      Text(
                        "Account Overview",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ContainerColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "20600",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Current Balance",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(width: 5),
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add),
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Send Money"),
                    Icon(
                      Icons.document_scanner_outlined,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 25,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              color: Colors.black,
                            ),
                          ),
                        ),
                        cards(
                          cardicon: "asset/male-60.png",
                          label: "Mike",
                        ),
                        cards(
                          cardicon: "asset/female-64.png",
                          label: "Ashley",
                        ),
                        cards(
                          cardicon: "asset/male-60.png",
                          label: "Joseph",
                        ),
                        cards(
                          cardicon: "asset/female-64.png",
                          label: "Sara",
                        ),
                        cards(
                          cardicon: "asset/male-60.png",
                          label: "Dani",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Services"),
                    Icon(Icons.tune),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    services(
                      cardicon: Icons.money_off_csred_outlined,
                      label: "Send Money",
                    ),
                    services(
                      cardicon: Icons.phone_android,
                      label: "Receive Money",
                    ),
                    services(
                      cardicon: Icons.mobile_screen_share,
                      label: "Mobile Prepaid",
                    ),
                    services(
                      cardicon: Icons.flash_on,
                      label: "Electricty Bill",
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    services(
                      cardicon: Icons.money,
                      label: "CashBack Offer",
                    ),
                    services(
                      cardicon: Icons.movie,
                      label: "Movie Ticket",
                    ),
                    services(
                      cardicon: Icons.flight,
                      label: "Flight Ticket",
                    ),
                    services(
                      cardicon: Icons.filter_list,
                      label: "More Option",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class cards extends StatelessWidget {
  cards({@required this.cardicon = '', @required this.label = ''});

  final String cardicon;

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: BoxDecoration(
        color: ContainerColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            child: Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Image(
                image: AssetImage(cardicon),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}

class services extends StatelessWidget {
  services({@required this.cardicon, this.label = ''});

  final IconData? cardicon;

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: ContainerColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  cardicon,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
