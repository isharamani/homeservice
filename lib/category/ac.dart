
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeservice/category/acregular.dart';

class AcScreen extends StatefulWidget {
  AcScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AcScreenState createState() => _AcScreenState();
}

class _AcScreenState extends State<AcScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true, // Removes the default back button
        title: acservice(title: "",),
      ),
      body: ListView(
        children: [
          ServiceCard(
            title: 'AC Repair',
            rating: 4.8,
            reviews: 87,
            price: 'Kshs98',
            imageUrl: 'assets/Mask Group.png',
          ),
          ServiceCard(
            title: 'AC Service',
            rating: 4.5,
            reviews: 87,
            price: 'Kshs128',
            imageUrl: 'assets/Mask Group1.png',
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AcRegular(title: "AC Service Booking"),));
            },
            child: ServiceCard(
              title: 'AC Regular Service',
              rating: 4.5,
              reviews: 87,
              price: 'Kshs170',
              imageUrl: 'assets/Mask Group2.png',
            ),
          ),
          ServiceCard(
            title: 'AC Regular Service',
            rating: 4.5,
            reviews: 87,
            price: 'Kshs170',
            imageUrl: 'assets/Mask Group3.png',
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final double rating;
  final int reviews;
  final String price;
  final String imageUrl;

  ServiceCard({
    required this.title,
    required this.rating,
    required this.reviews,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text('$rating ($reviews)'),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Starts From',
                    style: TextStyle(fontSize: 14.0),
                  ),
                  SizedBox(height: 4.0),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green[200],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      price,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class acservice extends StatefulWidget {
  acservice({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _acserviceState createState() => _acserviceState();
}

class _acserviceState extends State<acservice> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Services'),
    Text('About'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}