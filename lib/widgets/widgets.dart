import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//////////////////////////////////////////////// BAR WIDGETS //////////////////////////////////////////////

// ----------------- Custom AppBar ----------------- //

PreferredSizeWidget customAppBar(String title) {
  return AppBar(
      toolbarHeight: 40,
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 119, 119, 119),
      title: Text(
        title,
        style: const TextStyle(color: Color.fromARGB(255, 5, 5, 5)),
      ));
}
// ----------------- End of Custom AppBar ----------------- //

// ----------------- Custom Bottom Bar ----------------- //

customBottomBar() {
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
        backgroundColor: Color.fromARGB(255, 119, 119, 119),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.arrow_circle_left),
        label: 'Search',
        backgroundColor: Color.fromARGB(255, 119, 119, 119),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.rocket_launch,
        ),
        label: 'Profile',
        backgroundColor: Color.fromARGB(255, 119, 119, 119),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.format_list_bulleted),
        label: 'Profile',
        backgroundColor: Color.fromARGB(255, 119, 119, 119),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
        backgroundColor: Color.fromARGB(255, 119, 119, 119),
      ),
    ],
    selectedItemColor: const Color.fromARGB(255, 0, 179, 255),
    unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
  );
}
// ----------------- End of Custom Bottom Bar ----------------- //

/////////////////////////////////////////////////// END BAR WIDGETS ////////////////////////////////////////////////

/////////////////////////////////////////////////// MATCH WIDGETS ////////////////////////////////////////////////

Widget createMatchSpinner(String spinnerTitle) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 140, 0),
        child: Text(
          spinnerTitle,
          style: const TextStyle(
              color: Color.fromARGB(255, 239, 239, 239),
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(height: 10),
      Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/rec109.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        width: 310,
        height: 145,
        child: ListWheelScrollView(
          perspective: 0.01,
          diameterRatio: 1.0,
          itemExtent: 50,
          children: [
            Container(
              child: const Text("1",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              child: const Text("2",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              child: const Text("3",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              child: const Text("4",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    ],
  );
}

/////////////////////////////////////////////////// END MATCH WIDGETS ////////////////////////////////////////////

/////////////////////////////////////////////////// REGISTER WIDGETS ////////////////////////////////////////////////
/////////////////////////////////////////////////// END REGISTER WIDGETS ////////////////////////////////////////////

/////////////////////////////////////////////////// LOGIN WIDGETS ////////////////////////////////////////////////
/////////////////////////////////////////////////// END LOGIN WIDGETS ////////////////////////////////////////////

/////////////////////////////////////////////////// MAINPAGE WIDGETS ////////////////////////////////////////////////
/////////////////////////////////////////////////// END MAINPAGE WIDGETS ////////////////////////////////////////////

/////////////////////////////////////////////////// LAST MATCHES WIDGETS ////////////////////////////////////////////////
/////////////////////////////////////////////////// END LAST MATCHES WIDGETS ////////////////////////////////////////////

/////////////////////////////////////////////////// LOGO WIDGET ////////////////////////////////////////////////
// ----------------- Start  Logo Widget Vertikal ----------------- //
Widget logoWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.asset('assets/logo.png', height: 50, width: 50),
      const SizedBox(width: 10),
      const Text("Pong",
          style: TextStyle(
              fontFamily: "Comfortaa",
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255))),
      const Text("Palooza",
          style: TextStyle(
              fontFamily: "Comforter",
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255))),
    ],
  );
}
// ----------------- End of Logo Widget Vertikal ----------------- //

// ----------------- Start Logo Widget Horizontal ----------------- //

Widget logoWidgetHorizontal() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset('assets/logo.png', height: 95, width: 95),
      const SizedBox(height: 10),
      const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Pong",
              style: TextStyle(
                  fontFamily: "Comfortaa",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255))),
          Text("Palooza",
              style: TextStyle(
                  fontFamily: "Comforter",
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255))),
        ],
      ),
    ],
  );
}

// ----------------- End of Logo Widget Horizontal ----------------- //

// Image Button Widget //

Widget imageButton(String imagePath, String buttonText, Function onPressed) {
  return GestureDetector(
    onTap: () {
      onPressed();
    },
    child: SizedBox(
      width: 344,
      height: 56,
      child: Image.asset(
        imagePath,
        height: 56,
        width: 344,
        fit: BoxFit.cover,
      ),
    ),
  );
}

/////////////////////////////////////////////////// END LOGO WIDGET ////////////////////////////////////////////
