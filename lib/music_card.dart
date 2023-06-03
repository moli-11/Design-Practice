import 'package:flutter/material.dart';

class MusicCard extends StatefulWidget {
  const MusicCard({Key? key, required this.text, }) : super(key: key);
  final String text;

  @override
  State<MusicCard> createState() => _MusicCardState();
}

class _MusicCardState extends State<MusicCard> {
  bool isFavourite =false;

  void onTap(){
    isFavourite =!isFavourite;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 7,
      ),
      child: Container(
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                    colors: [
                      Color(0XFF6E8FE9),
                      Color(0XFFB876F1),
                    ],
                  ),
                  boxShadow: [BoxShadow(
                    color: Color(0XFFF5F7FD),
                    offset: Offset(-4,-4),
                    blurRadius: 9,
                    spreadRadius: 0,
                  )]
              ),
              child: Icon(Icons.music_note_outlined,
                size: 26,
                color: Color(0XFFFFFFFF),
              ),
            ),
            SizedBox(width: 15,),
            Text(widget.text, style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                shadows: [Shadow(
                  offset: Offset(5.0, 5.0),
                  blurRadius: 5.0,
                  color: Color(0XFFF5F7FD),
                ),]
            ),),
            Spacer(),
            GestureDetector(
                onTap: onTap,
                child: Icon(Icons.favorite,
                  size: 26,
                  color: isFavourite==false?Colors.white:Color(0XFFF22A2A),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
