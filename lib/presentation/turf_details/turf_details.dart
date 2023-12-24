import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turf_tender/constants/constants.dart';
import 'package:turf_tender/presentation/turf_details/widgets/turf_calender.dart';

@RoutePage()
class TurfDetailScreen extends StatefulWidget {
  const TurfDetailScreen({super.key});

  @override
  State<TurfDetailScreen> createState() => _TurfDetailScreenState();
}

class _TurfDetailScreenState extends State<TurfDetailScreen> {
  var selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              context.router.back();
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF494949),
            ),
          ),
          title: Text(
            'TURF DETAILS',
            style: TextStyle(
              color: Color(0xFF494949),
              fontSize: 20,
              fontFamily: 'Fira Sans Extra Condensed',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: false,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imageSliders,
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 357.w,
                  height: 230.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'ABC Soccer Club Kakkanad',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontFamily: 'Fira Sans Extra Condensed',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        width: 305.w,
                        height: 64.h,
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur. Non nec sollicitudin tellus sagittis nisi. Interdum et ultrices egestas eu sem. Adipiscing velit.',
                          style: TextStyle(
                            color: Color(0xFF909090),
                            fontSize: 15.sp,
                            fontFamily: 'Fira Sans',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/map-pin-5-line 1.png',
                                width: 18.w,
                                height: 18.h,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              SizedBox(
                                width: 235.w,
                                child: Text(
                                  'Kakkanad, Infopark Expressway, Kochi, Kerala',
                                  style: TextStyle(
                                    color: Color(0xFF3792C4),
                                    fontSize: 13,
                                    fontFamily: 'Fira Sans',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                            ],
                          ),
                          Positioned(
                            right: 10.r,
                            child: Image.asset(
                              'images/compass-3-fill 1.png',
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'images/light-bulb 1.png',
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(width: 10.w),
                              Image.asset(
                                'images/water 1.png',
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(width: 10.w),
                              Image.asset(
                                'images/parked-car 1.png',
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(width: 10.w),
                              Image.asset(
                                'images/electric-car 1.png',
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(width: 10.w),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 335.w,
                height: 220.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20).r,
                      child: Text(
                        'Schedule Appointment',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Fira Sans Condensed',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: HorizontalCalendarTurf(
                        date: DateTime.now(),
                        initialDate: DateTime.now(),
                        textColor: Colors.black,
                        backgroundColor: Colors.white,
                        selectedColor: Color(0xff3792C4),
                        locale: Localizations.localeOf(context),
                        onDateSelected: (date) {
                          print(date.toString());
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.network(item, fit: BoxFit.cover, width: 1000.0),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ))
    .toList();
