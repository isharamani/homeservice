
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeservice/category/ac.dart';
import 'package:iconsax/iconsax.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Removes the default back button
        title: Top(),
        backgroundColor: Color(0x1A2332), // Background color matching the image
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 30,),
          Row (
            children: [
              Text(
                '   All Categories',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: EdgeInsets.all(10),
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>AcScreen(title: "AC Service") ,));
                },
                child: CategoryCard(
                  icon: Iconsax.airdrop,
                  title: 'AC Service',
                  color: Colors.orange[300]!,
                ),
              ),
              CategoryCard(
                icon: Iconsax.brush_1,
                title: 'Beauty',
                color: Colors.purple[300]!,
              ),
              CategoryCard(
                icon: Icons.camera_enhance_outlined,
                title: 'Appliance',
                color: Colors.blue[300]!,
              ),
              CategoryCard(
                icon: Icons.format_paint,
                title: 'Painting',
                color: Colors.green[300]!,
              ),
              CategoryCard(
                icon: Icons.cleaning_services,
                title: 'Cleaning',
                color: Colors.yellow[300]!,
              ),
              CategoryCard(
                icon: Icons.plumbing,
                title: 'Plumbing',
                color: Colors.green[300]!,
              ),
              CategoryCard(
                icon: Iconsax.electricity,
                title: 'Electronics',
                color: Colors.pink[300]!,
              ),
              CategoryCard(
                icon: Icons.delivery_dining_outlined,
                title: 'Shifting',
                color: Colors.purple[300]!,
              ),
              CategoryCard(
                icon: Iconsax.scissor,
                title: 'Men\'s Salon',
                color: Colors.blue[300]!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  CategoryCard({required this.icon, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 40,
            color: Colors.white,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search Category',
          prefixIcon: Icon(Icons.search),
          suffixIcon: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Handle back button press
            },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[200],
        ),
      ),
    );

  }
}
