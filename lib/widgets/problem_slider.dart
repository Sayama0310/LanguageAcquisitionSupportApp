import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speaking_exercise/sample_data/sentences.dart';

class ProblemSlider extends StatefulWidget {
  const ProblemSlider({super.key});

  @override
  State<ProblemSlider> createState() => _ProblemSliderState();
}

class _ProblemSliderState extends State<ProblemSlider> {
  int _index = 0;
  bool _ok = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  sentences[_index].nativeLanguageSentence,
                  style: GoogleFonts.zenMaruGothic(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Visibility(
                  visible: _ok,
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      sentences[_index].acquiredLanguageSentence,
                      style: GoogleFonts.nunito(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.amber,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_left),
                    color: Colors.white,
                    onPressed: () {
                      if (_index > 0) {
                        setState(() {
                          _index--;
                          _ok = false;
                        });
                      }
                    },
                  ),
                ),
                const SizedBox(width: 20),
                Ink(
                  decoration: ShapeDecoration(
                    color: _ok ? Colors.amberAccent : Colors.grey,
                    shape: const CircleBorder(),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.check),
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        _ok = !_ok;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 20),
                Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.amber,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_right),
                    color: Colors.white,
                    onPressed: () {
                      if (_index < sentences.length - 1) {
                        setState(() {
                          _index++;
                          _ok = false;
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
