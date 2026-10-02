import 'package:flutter/material.dart';

class UtilitiesScreen extends StatelessWidget {
  const UtilitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> utilities = [
      {'title': 'Stress & Strain Calculator', 'icon': Icons.compress},
      {'title': 'Unit Converter', 'icon': Icons.sync_alt},
      {'title': 'Steam Tables', 'icon': Icons.water_drop},
      {'title': 'Material Properties', 'icon': Icons.layers},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('UTILITIES'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16.0),
        itemCount: utilities.length,
        separatorBuilder: (context, index) => const Divider(color: Colors.white24),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(utilities[index]['icon'], color: const Color(0xFF00E5FF)),
            title: Text(
              utilities[index]['title'],
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: const Icon(Icons.chevron_right, color: Colors.white54),
            onTap: () {},
          );
        },
      ),
    );
  }
}
