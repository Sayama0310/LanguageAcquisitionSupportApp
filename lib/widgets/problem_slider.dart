import 'package:flutter/material.dart';
import 'package:speaking_exercise/sample_data/sentences.dart';

class ProblemSlider extends StatefulWidget {
  const ProblemSlider({super.key});

  @override
  State<ProblemSlider> createState() => _ProblemSliderState();
}

class _ProblemSliderState extends State<ProblemSlider> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            sentences[_index].acquiredLanguageSentence,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            sentences[_index].nativeLanguageSentence,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Row(
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
                      });
                    }
                  },
                ),
              ),
              const SizedBox(width: 20),
              Ink(
                decoration: const ShapeDecoration(
                  color: Colors.amberAccent,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: const Icon(Icons.check),
                  color: Colors.white,
                  onPressed: () {
                    if (_index > 0) {
                      _index--;
                    }
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
                      });
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
