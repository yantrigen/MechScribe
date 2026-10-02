import 'package:flutter/material.dart';
import 'syllabus_screen.dart';
import 'utilities_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MECHSCRIBE'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Yantrigen Labs',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),
            const SizedBox(height: 8),
            const Text(
              'Engineer\'s Dashboard',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  _buildMenuCard(
                    context, 
                    'University Syllabi', 
                    Icons.menu_book, 
                    'Access mechanical syllabus',
                    const SyllabusScreen(),
                  ),
                  _buildMenuCard(
                    context, 
                    'Essential Utilities', 
                    Icons.calculate, 
                    'Calculators & formulas',
                    const UtilitiesScreen(),
                  ),
                  _buildMenuCard(
                    context, 
                    'CAD Models', 
                    Icons.architecture, 
                    '3D reference designs',
                    null, 
                  ),
                  _buildMenuCard(
                    context, 
                    'Community', 
                    Icons.forum, 
                    'Discussion forum',
                    null, 
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, String title, IconData icon, String subtitle, Widget? targetScreen) {
    return InkWell(
      onTap: () {
        if (targetScreen != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => targetScreen),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Feature coming soon!')),
          );
        }
      },
      borderRadius: BorderRadius.circular(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: const Color(0xFF00E5FF)),
              const SizedBox(height: 16),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12, color: Colors.white54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
