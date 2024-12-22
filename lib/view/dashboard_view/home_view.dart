import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int? _selectedItemIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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

            // Brand Logos with Boxes
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    final logos = [
                      {'path': 'assets/images/logo of bmw.jpg', 'name': 'BMW'},
                      {
                        'path': 'assets/images/volkswagen logo.png',
                        'name': 'Volkswagen'
                      },
                      {
                        'path': 'assets/images/mercedes-benz-logo.png',
                        'name': 'Mercedes'
                      },
                      {'path': 'assets/images/nissan.jpeg', 'name': 'Nissan'},
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

            // Car Cards
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.75, // Larger card aspect ratio
                ),
                padding: const EdgeInsets.all(8.0),
                itemCount: 6,
                itemBuilder: (context, index) {
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
                          : null,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Brand Logo Widget with Box
  Widget _buildCarLogo(String imagePath, String brandName) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 90, // Width of the box
            height: 90, // Height of the box
            decoration: BoxDecoration(
              color: Colors.white, // Background color for the box
              borderRadius: BorderRadius.circular(12), // Rounded corners
              border: Border.all(
                color: Colors.grey.shade300, // Border color
                width: 2, // Border thickness
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1), // Shadow color
                  blurRadius: 6, // Shadow blur radius
                  offset: const Offset(0, 3), // Shadow position
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0), // Padding inside the box
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain, // Ensures the image fits well
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            brandName,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  // Car Item Card Widget
  Widget _buildItemCard(String imagePath, String carName, String? price) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Car Image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: AspectRatio(
              aspectRatio: 16 / 10,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Car Name
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              carName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          // Price
          if (price != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                price,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
