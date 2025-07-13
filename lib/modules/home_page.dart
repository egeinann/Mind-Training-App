import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f6fa),
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: ContainedTabBarView(
          tabs: const [
            Text('Alıştırmalar', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              'İstatistikler',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
          tabBarProperties: TabBarProperties(
            height: 48,
            width: 280,
            alignment: TabBarAlignment.center,
            position: TabBarPosition.top,
            background: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.5),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black87,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.deepPurple,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            labelStyle: const TextStyle(fontSize: 14),
          ),
          views: [
            _buildPage(Colors.deepPurple.shade100),
            _buildPage(Colors.teal.shade100),
          ],
        ),
      ),
    );
  }

  Widget _buildPage(Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(
        child: Text("Sayfa İçeriği", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
