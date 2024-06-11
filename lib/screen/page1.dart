
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeservice/category/ac.dart';
import 'package:homeservice/screen/search.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Removes the default back button
        title: CustomTopNavBar(),
        backgroundColor: Color(0xFF1F1F1F), // Background color matching the image
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 25,right: 10,left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'HELLO HALIMA 👋',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'What you are looking for today',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 16),
                SearchBar(),
                SizedBox(height: 16),
                CategorySection(),
                SizedBox(height: 16),
                ServiceSection(
                  title: 'Cleaning Services',
                  services: [
                    ServiceItem(imagePath: 'assets/home cleaning.png', label: 'Home Cleaning', discount: '10% OFF'),
                    ServiceItem(imagePath: 'assets/carpet cleaning.png', label: 'Carpet Cleaning'),
                    ServiceItem(imagePath: 'assets/bathroom.jpg', label: 'Bathroom Cleaning'),
                    ServiceItem(imagePath: 'assets/kitchen.jpg', label: 'Kitchen Cleaning'),
                    ServiceItem(imagePath: 'assets/garden.jpg', label: 'Garden Cleaning'),
                  ],
                ),
                SizedBox(height: 16),
                OfferCard(
                  title: 'Offer AC Service',
                  description: 'Get 25%',
                  buttonText: 'Grab Offer',
                  backgroundColor: Colors.green[100],
                ),
                SizedBox(height: 16),
                ServiceSection(
                  title: 'Appliance Repair',

                  services: [
                    ServiceItem(imagePath: 'assets/Offer Large.png', label: 'Dry Cleaning', discount: '25% OFF'),
                  ],
                ),
              ],
            ),
          ),
        ),

    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: ""),));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search what you need...',
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
            prefixIcon: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: ""),));
                },
                child: Icon(Icons.search, color: Colors.white)),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          ),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class CategorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AcScreen(title: "Ac Repair"),));
            },
            child: CategoryItem(icon: Icons.ac_unit, label: 'AC Repair')),
        CategoryItem(icon: Icons.brush, label: 'Beauty'),
        CategoryItem(icon: Icons.build, label: 'Appliance'),
        CategoryItem(icon: Icons.more_horiz, label: 'See All'),
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  CategoryItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.grey[800],
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}

class ServiceSection extends StatelessWidget {
  final String title;
  final List<ServiceItem> services;

  ServiceSection({required this.title, required this.services});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            TextButton(
              onPressed: () {},
              child: Text('See All', style: TextStyle(color: Colors.blue)),
            ),
          ],
        ),
        SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: services.map((service) => Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: service,
            )).toList(),
          ),
        ),
      ],
    );
  }
}

class ServiceItem extends StatelessWidget {
  final String imagePath;
  final String label;
  final String? discount;

  ServiceItem({required this.imagePath, required this.label, this.discount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(imagePath, fit: BoxFit.cover, height: 100, width: double.infinity),
              if (discount != null)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    color: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Text(discount!, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(label, style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText;
  final Color? backgroundColor;

  OfferCard({required this.title, required this.description, required this.buttonText, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.grey[800],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: Colors.black)),
          SizedBox(height: 8),
          Text(description, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
            child: Text(buttonText),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.home, color: Colors.white),
          onPressed: () {
            // Handle home button press
          },
        ),
        IconButton(
          icon: Icon(Icons.note, color: Colors.white),
          onPressed: () {
            // Handle note button press
          },
        ),
        Stack(
          children: [
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () {
                // Handle notifications button press
              },
            ),
            Positioned(
              right: 12,
              top: 12,
              child: CircleAvatar(
                radius: 4,
                backgroundColor: Colors.purple,
              ),
            ),
          ],
        ),
        IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Handle menu button press
          },
        ),
      ],
    );
  }
}