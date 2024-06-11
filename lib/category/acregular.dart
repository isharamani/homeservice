
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AcRegular extends StatefulWidget {
  AcRegular({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AcRegularState createState() => _AcRegularState();
}

class _AcRegularState extends State<AcRegular> {
  int _units = 2;
  int _bedrooms = 0;
  String _propertyType = 'Home';
  String _description = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'AC Regular Service',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Type of Property',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _propertyType = 'Home';
                      });
                    },
                    child: Icon(Icons.home),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _propertyType == 'Home'
                          ? Colors.blue
                          : Colors.grey,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _propertyType = 'Office';
                      });
                    },
                    child: Icon(Icons.business),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _propertyType == 'Office'
                          ? Colors.blue
                          : Colors.grey,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _propertyType = 'Vila';
                      });
                    },
                    child: Icon(Icons.villa),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _propertyType == 'Vila'
                          ? Colors.blue
                          : Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Number of Units',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _units = _units > 1 ? _units - 1 : _units;
                      });
                    },
                    icon: Icon(Icons.remove),
                  ),
                  Text('$_units'),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _units++;
                      });
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Number of Bedrooms',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _bedrooms = _bedrooms > 0 ? _bedrooms - 1 : _bedrooms;
                      });
                    },
                    icon: Icon(Icons.remove),
                  ),
                  Text('$_bedrooms'),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _bedrooms++;
                      });
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Description',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                onChanged: (text) {
                  setState(() {
                    _description = text;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Enter description',
                  border: OutlineInputBorder(),
                ),
                maxLines: 4,
              ),
              SizedBox(height: 16),
              Text(
                'Total: Kshs 150.50',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Save draft logic
                    },
                    child: Text('Save Draft'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Book Now logic
                    },
                    child: Text('Book Now'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}