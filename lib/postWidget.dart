import 'package:flutter/material.dart';
import 'package:pet_gallery/ImageCarousel.dart';

class Post extends StatefulWidget {
  const Post({
    super.key,
    required this.caption,
    required this.maxLines,
  });
  final String caption;
  final int maxLines;

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool _expanded = true;
  bool _isFilled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.5, color: Colors.grey), // Bottom border
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                      child: Image.asset(
                        'assets/images.png',
                        height: 35,
                        width: 35,
                        fit: BoxFit.cover, // Adjust the fit as needed
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Text(
                            textAlign: TextAlign.start,
                            'Username',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.start,
                            'Post Location',
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.more_horiz_outlined),
                )
              ],
            ),
          ),
          GestureDetector(
            onDoubleTap: () {
              setState(() {
                _isFilled = !_isFilled;
              });
            },
            child: AspectRatio(
                aspectRatio: 16 / 17,
                child: ImageCarousel(images: [
                  'assets/landingScreenBackgroundSmall.png',
                  'assets/image_4.png'
                ])),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: 3.0, bottom: 3.0, left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        color: Colors.black,
                        Icons.add_comment_outlined,
                      ),
                    ),
                    Text(
                      '0 Comments',
                      style: TextStyle(fontSize: 10.0),
                    )
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isFilled = !_isFilled;
                        });
                      },
                      child: Icon(
                        _isFilled
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_rounded,
                        color: _isFilled ? Colors.red : Colors.black,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        color: Colors.black,
                        Icons.send_outlined,
                      ),
                    ),
                    Text(
                      '0 Shares',
                      style: TextStyle(fontSize: 10.0),
                    )
                  ],
                )

                // Icon(Icons.)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '0 Likes',
                  style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      'Username',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      widget.caption,
                      maxLines: _expanded ? null : widget.maxLines,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 10.0, color: Colors.black),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _expanded = !_expanded;
                    });
                  },
                  child: Text(
                    _expanded ? 'More' : 'Less',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Color.fromARGB(
                          255, 121, 94, 56), // Customize color as needed
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
