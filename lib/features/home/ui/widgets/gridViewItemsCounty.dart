import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recipes/features/home/ui/data/countrys.dart';
import 'package:recipes/features/home/ui/widgets/containerItemCountry.dart';

class GridViewitemscountry extends StatelessWidget {
  const GridViewitemscountry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      scrollDirection: Axis.horizontal,
              
             itemCount: data.length,
        crossAxisCount: 2, // عدد العناصر في العمود الواحد
        mainAxisSpacing: 10, // المسافة الأفقية بين العناصر
        crossAxisSpacing: 10, 
          // عدد العناصر
      itemBuilder: (BuildContext context, int index) {
        return  Cotaineritemcountry(name: data[index].name,flag:data[index].flag ,); // إعادة تصميم العنصر
      },
    );
  }
}

