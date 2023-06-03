import 'dart:ffi';

import 'package:aiaudio1/music_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0XFFD2DEFE),
              Color(0XFFD2DEFE),
              Color(0XFFE4CDF8),
              Color(0XFFE4CDF8),
              Color(0XFFE4CDF8),
            ],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
          ),
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 80),
                    Text('Shakira', style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF3B4F7D),
                    ),),
                    Text('El dorado', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF3B4F7D),
                    ),),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Container(
                        height: 260,
                        width: 260,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: AssetImage('assets/Group 1.png'),
                            fit: BoxFit.cover,
                          ),

                          borderRadius: BorderRadius.circular(15),
                          // boxShadow: [
                          //   BoxShadow(
                          //     offset: Offset(3,5),
                          //     color: Colors.blueGrey,
                          //     blurRadius: 5.0,
                          //     spreadRadius: 2.0,
                          //   )
                          // ]
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text('My Playlist', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF3B4F7D),
                  fontSize: 24,
                ),),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width*0.15,
                        top: 12,
                        left: 20,
                    ),
                    child: Column(
                      children: [
                        MusicCard(text: 'Shape Of You',),
                        MusicCard(text: 'Lavender Haze',),
                        MusicCard(text: 'Night Changes',),
                        MusicCard(text: 'Until I Found You',),
                        MusicCard(text: 'Love Story',),
                        MusicCard(text: 'You & I',),
                        MusicCard(text: 'Treat You Better',),
                        MusicCard(text: 'Senorita',),
                        MusicCard(text: 'Shiver',),
                        MusicCard(text: 'Closer',),
                        MusicCard(text: 'Style',),
                        MusicCard(text: 'If The World Was Ending',),
                        MusicCard(text: 'Perfect',),
                        MusicCard(text: 'Story Of My Life',),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}
