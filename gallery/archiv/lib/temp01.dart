
class GlassmorphicBox1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2), // Verwendung von withValues
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            spreadRadius: 5,
            blurRadius: 15,
            offset: Offset(0, 3), // Verschiebung des Schattens
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            // Bild-Widget
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 160, // 80% der Höhe der Box (200 * 0.8)
              child: 
                Image(
                  image: AssetImage('assets/images/ski.jpeg'), 
                  fit: BoxFit.cover
              /*Image.network(
                'https://example.com/dein-bild.jpg', // Ersetze dies durch die URL deines Bildes
                fit: BoxFit.cover,*/
              ),
            ),
            // BackdropFilter für den Glanz-Effekt
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Glanz-Effekt
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.1), // Weitere Transparenz für den Glaseffekt
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'Glas Box',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}