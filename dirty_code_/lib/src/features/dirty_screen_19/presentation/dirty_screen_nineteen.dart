import 'package:flutter/material.dart';

class DirtyScreenNineteen extends StatelessWidget {
  const DirtyScreenNineteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #19"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(8),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.book),
                    title: Text('The Great Gatsby'),
                    subtitle: Text('F. Scott Fitzgerald'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'A novel set in the Roaring Twenties, telling the story of the mysterious millionaire Jay Gatsby and his obsession with Daisy Buchanan.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(8),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.book),
                    title: Text('1984'),
                    subtitle: Text('George Orwell'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'A dystopian social science fiction novel and cautionary tale, warning the dangers of totalitarianism and excessive political authority.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(8),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.book),
                    title: Text('To Kill a Mockingbird'),
                    subtitle: Text('Harper Lee'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'A novel about the serious issues of rape and racial inequality, but it is also filled with warmth and humor.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(8),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Pride and Prejudice'),
                    subtitle: Text('Jane Austen'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'A romantic novel that charts the emotional development of the protagonist Elizabeth Bennet, who learns the error of making hasty judgments.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
