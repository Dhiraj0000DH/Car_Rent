import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int? _selectedItemIndex; // To track the selected car index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                // Handle search functionality here
              },
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          // Brand Logos
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: SizedBox(
              height: 120, // Fixed height for logos
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Number of logos
                itemBuilder: (context, index) {
                  // Updated logo order
                  final logos = [
                    {'path': 'assets/images/BMW.jpeg', 'name': 'BMW'},
                    {
                      'path': 'assets/images/volkswagen.png',
                      'name': 'Volkswagen'
                    },
                    {'path': 'assets/images/mercedes.jpeg', 'name': 'Mercedes'},
                    {
                      'path': 'assets/images/nissan.jpeg',
                      'name': 'Nissan'
                    }, // Nissan at 4th position
                    {'path': 'assets/images/Audi.png', 'name': 'Audi'},
                  ];
                  return _buildCarLogo(
                    logos[index]['path']!,
                    logos[index]['name']!,
                  );
                },
              ),
            ),
          ),
          // Additional Dashboard Items
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of items per row
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              padding: const EdgeInsets.all(8.0),
              itemCount: 6, // Example item count
              itemBuilder: (context, index) {
                // Define image paths, names, and prices for items
                final items = [
                  {
                    'imagePath': 'assets/images/car6.jpg',
                    'name': 'Nissan Altima',
                    'price': 'Rs. 2,000'
                  },
                  {
                    'imagePath': 'assets/images/car7.jpeg',
                    'name': 'BMW X5',
                    'price': 'Rs. 2,500'
                  },
                  {
                    'imagePath': 'assets/images/car6.jpg',
                    'name': 'Volkswagen Passat',
                    'price': 'Rs. 3,000'
                  },
                  {
                    'imagePath': 'assets/images/car6.jpg',
                    'name': 'Mercedes-Benz C-Class',
                    'price': 'Rs. 1,800'
                  },
                  {
                    'imagePath': 'assets/images/car6.jpg',
                    'name': 'Toyota Camry',
                    'price': 'Rs. 2,200'
                  },
                  {
                    'imagePath': 'assets/images/car6.jpg',
                    'name': 'Honda Accord',
                    'price': 'Rs. 1,900'
                  },
                ];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedItemIndex =
                          (_selectedItemIndex == index) ? null : index;
                    });
                  },
                  child: _buildItemCard(
                    items[index]['imagePath']!,
                    items[index]['name']!,
                    _selectedItemIndex == index
                        ? '${items[index]['price']} per day'
                        : null, // Show price only if tapped
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Booking'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation
        },
      ),
    );
  }

  Widget _buildCarLogo(String imagePath, String brandName) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            brandName,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildItemCard(String imagePath, String carName, String? price) {
    return Card(
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            carName,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          if (price != null) ...[
            const SizedBox(height: 8),
            Text(
              price,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
