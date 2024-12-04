import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recipes/core/constants/colors.dart';
import 'package:recipes/features/home/ui/widgets/appBarHomePage.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Appbarhomepage(),
            const SizedBox(height: 20),
            const Text(
              'What is your favorite country?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 120,
              child: MasonryGridView.count(
                scrollDirection: Axis.horizontal,
                        
                       itemCount: 10,
                  crossAxisCount: 2, // عدد العناصر في العمود الواحد
                  mainAxisSpacing: 10, // المسافة الأفقية بين العناصر
                  crossAxisSpacing: 10, 
                    // عدد العناصر
                itemBuilder: (BuildContext context, int index) {
                  return const Cotaineritemcountry(); // إعادة تصميم العنصر
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Cotaineritemcountry extends StatelessWidget {
  const Cotaineritemcountry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('🇸🇩', style: TextStyle(fontSize: 24)),
            SizedBox(width: 8),
            
            Text(
              'Palestineeeeee',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
