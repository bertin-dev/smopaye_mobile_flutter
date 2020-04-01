import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smopaye_mobile/Models/onboarding_viewmodel.dart';



//1
class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "SMOPAYE SLIDER",
      home: HomeOnBoarding(),
      debugShowCheckedModeBanner: false,
    );
  }
}


//2
class HomeOnBoarding extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

//3
class _HomeState extends State<HomeOnBoarding> {

  List<SliderModel> sliders = new List<SliderModel>();
  int currentIndex = 0;
  PageController pageController = new PageController(initialPage: 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sliders = getSlides();
  }

  Widget pageIndexIndicator(bool isCurrentPage){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
          color: isCurrentPage ? Colors.grey : Colors.grey[300],
          borderRadius: BorderRadius.circular(12)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
          controller: pageController,
          itemCount: sliders.length,
          onPageChanged: (val){
            setState(() {
              currentIndex = val;
            });
          },
          itemBuilder: (context, index){
            return SliderTitle(
              imageAssertPath: sliders[index].getImageAssetPath(),
              title: sliders[index].getTitle(),
              desc: sliders[index].getDesc(),
            );
          }),
      bottomSheet: currentIndex != sliders.length - 1 ? Container(
        height: Platform.isIOS ? 70 : 60,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
                onTap: (){
                  pageController.animateToPage(sliders.length - 1, duration: Duration(milliseconds: 400), curve: Curves.linear);
                },
                child: Text("PASSER")
            ),
            Row(
              children: <Widget>[
                for(int i = 0; i < sliders.length; i++) currentIndex == i ? pageIndexIndicator(true) : pageIndexIndicator(false)
              ],
            ),
            GestureDetector(
                onTap: (){
                  pageController.animateToPage(currentIndex + 1, duration: Duration(milliseconds: 400), curve: Curves.linear);
                },
                child: Text("SUIVANT")
            ),
          ],
        ),
      ) : Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: Platform.isIOS ? 70 : 60,
        color: Colors.blue,
        child: Text("DEMARRER", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600
        ),),
      ),
    );
  }
}


class SliderTitle extends StatelessWidget {

  String imageAssertPath, title, desc;
  SliderTitle({this.imageAssertPath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageAssertPath),
          SizedBox(height: 20,),
          Text(title, style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
          ),),
          SizedBox(height: 12,),
          Text(desc, style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400
          ),)
        ],

      ),
    );
  }
}