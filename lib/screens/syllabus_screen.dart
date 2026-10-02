import 'package:flutter/material.dart';

class SyllabusScreen extends StatelessWidget {
  const SyllabusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> subjects = [
      {'name': 'Thermodynamics', 'semester': 'Semester 3'},
      {'name': 'Fluid Mechanics', 'semester': 'Semester 4'},
      {'name': 'Theory of Machines', 'semester': 'Semester 5'},
      {'name': 'Heat Transfer', 'semester': 'Semester 6'},
      {'name': 'Machine Design', 'semester': 'Semester 7'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('SYLLABI'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              leading: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF00E5FF).withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.book, color: Color(0xFF00E5FF)),
              ),
              title: Text(
                subjects[index]['name']!,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(subjects[index]['semester']!),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white54, size: 16),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
