import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'helpers.dart';

final topButtonsAndActivity = Padding(
  padding: const EdgeInsets.only(bottom: 24.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      pastPlayedButton,
      Text(
        'PLAYING NOW',
        style: GoogleFonts.prompt(
            fontSize: 11,
            color: Color(0xff818487),
            fontWeight: FontWeight.w700),
      ),
      menuButton,
    ],
  ),
);

final titleAndArtist = Padding(
  padding: const EdgeInsets.only(top: 40.0),
  child: Column(
    children: <Widget>[
      Column(
        children: <Widget>[
          Text(
            'Low Life',
            style: GoogleFonts.prompt(
                letterSpacing: 1.0,
                fontSize: 27.0,
                color: Color(0xffA7A8AB),
                fontWeight: FontWeight.w500),
          ),
          Text(
            'Future ft. The Weeknd',
            style: GoogleFonts.prompt(
                fontSize: 13.0,
                color: Color(0xff727477),
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ],
  ),
);

final mainImage = Padding(
  padding: const EdgeInsets.all(0.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[circularImage],
  ),
);

final musicScrubber = Padding(
  padding: const EdgeInsets.symmetric(vertical: 30.0),
  child: Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(bottom: 0.0, right: 23, left: 23),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '1:17',
              style: GoogleFonts.prompt(
                  fontSize: 11.0,
                  color: Color(0xff77787B),
                  fontWeight: FontWeight.w600),
            ),
            Text(
              '2:46',
              style: GoogleFonts.prompt(
                  fontSize: 11.0,
                  color: Color(0xff77787B),
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 50.0,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: scrubberBar,
            ),
            Positioned(
              top: -1.0,
              left: 125.0,
              child: thumb,
            )
          ],
        ),
      ),
    ],
  ),
);

final bottomButtons = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      rewindButton,
      pauseButton,
      fastForwardButton,
    ],
  ),
);
