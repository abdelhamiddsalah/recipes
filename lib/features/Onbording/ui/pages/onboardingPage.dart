import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes/core/constants/colors.dart';
import 'package:recipes/features/Onbording/data/contentList.dart';
import 'package:recipes/features/Onbording/ui/widgets/buttonOnboarding.dart';
import 'package:recipes/features/Onbording/ui/widgets/circalContainer.dart';
import 'package:recipes/features/Onbording/ui/widgets/rowCircalContainers.dart';
import 'package:recipes/main.dart';


class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
late  PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child:  Column(
                    
                    children: [
                     const SizedBox(height: 80,),
                      Image.asset(
                        contents[i].image!,
                        height: MediaQuery.of(context).size.height*.3,
                      ),
                      Text(
                        contents[i].title!,
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    const  SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:  40.0),
                        child: Text(
                          contents[i].discription!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Rowcircalcontainers(currentIndex: currentIndex),
          Buttonondoarding(currentIndex: currentIndex, controller: _controller)
        ],
      ),
    );
  }

 
}


