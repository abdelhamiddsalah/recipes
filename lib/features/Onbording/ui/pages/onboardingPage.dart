import 'package:flutter/material.dart';
import 'package:recipes/core/constants/colors.dart';
import 'package:recipes/features/Onbording/data/contentList.dart';


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
                  padding: const EdgeInsets.all(20),
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
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    const  SizedBox(height: 20),
                      Text(
                        contents[i].discription!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: Container(
              width: MediaQuery.of(context).size.width*.9,
              height: 100,
              color: mainColor,
              child: MaterialButton(
                child: Text(
                    currentIndex == contents.length - 1 ? "Continue" : "Next"),
                onPressed: () {
                  if (currentIndex == contents.length - 1) {
                   
                  }
                  _controller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
               
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:mainColor,
      ),
    );
  }
}