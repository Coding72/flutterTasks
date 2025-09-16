import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TimerWidget(),
    );
  }
}

class TimerEvent {
  final String message;

  TimerEvent(this.message);
}

class TimerService {
  final StreamController<TimerEvent> _controller = StreamController<TimerEvent>();
  Timer? _timer;
  int _seconds = 0;

  TimerService() {
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _seconds++;
      if (_seconds == 5) {
        _controller.add(TimerEvent('5 Sekunden sind vergangen!'));
      }
    });
  }

  Stream<TimerEvent> get timerStream => _controller.stream;

  void stopTimer() {
    _timer?.cancel();
    _controller.close();
  }
}

class TimerWidget extends StatefulWidget {
  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  final TimerService _timerService = TimerService();
  String _displayText = 'Starte den Timer';

  @override
  void initState() {
    super.initState();
    _timerService.timerStream.listen((event) {
      setState(() {
        _displayText = event.message;
      });
    });
  }

  @override
  void dispose() {
    _timerService.stopTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer mit Event-Trigger'),
      ),
      body: Center(
        child: Text(
          _displayText,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
