import 'package:car_rent/view/dashboard_view/booking_view.dart';
import 'package:car_rent/view/dashboard_view/cart_view.dart';
import 'package:car_rent/view/dashboard_view/home_view.dart';
import 'package:car_rent/view/dashboard_view/profile_view.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<Dashboard> {
  int _currentIndex = 0;

  // Replace AboutUsView with BookingView in the list of pages
  final List<Widget> _pages = [
    const HomeView(),
    const CartView(),
    const BookingView(), // Replaced AboutUsView with BookingView
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Car Rent Dashboard'),
        centerTitle: true,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed, // Prevent shifting effect
        selectedItemColor:
            Colors.blueAccent, // Highlight color for selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
        selectedIconTheme:
            const IconThemeData(size: 28), // Larger size for selected icons
        unselectedIconTheme:
            const IconThemeData(size: 24), // Smaller size for unselected icons
        showUnselectedLabels: true, // Show labels for unselected items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), // Updated icon for Booking
            label: 'Booking', // Updated label to "Booking"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
