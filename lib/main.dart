import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false, // Oculta la molesta barra de debug
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              
              
              children: [ // <-- ESTA LÍNEA ES LA QUE DABA EL ERROR
              
              // 1. CENTRO HISTÓRICO DE QUITO
                const ImageSection(image: 'images/centro_hisorico.jpg'),
                const TitleSection(name: 'Centro Histórico', location: 'UIO'),
                const ButtonSection(
                  mapsUrl: 'https://maps.app.goo.gl/YiqePCrFBHuFXv9D6'
                ),
                const TextSection(
                  description: 'El primer Patrimonio Cultural de la Humanidad. Una joya arquitectónica colonial repleta de iglesias históricas, plazas llenas de vida y el imponente mirador de El Panecillo.',
                ),

                // 2. ISLAS GALÁPAGOS
                const ImageSection(image: 'images/galapagos.jpg'),
                const TitleSection(name: 'Islas Galápagos', location: 'GLP'),
                const ButtonSection(
                  mapsUrl: 'https://maps.app.goo.gl/XnKFFZi5bUh5moSA6',
                ),
                const TextSection(
                  description: 'Un santuario natural único en el mundo. Famoso por su biodiversidad excepcional, tortugas gigantes, iguanas marinas y playas de arena blanca que inspiraron a Charles Darwin.',
                ),

                // 3. PARQUE NACIONAL COTOPAXI
                const ImageSection(image: 'images/cotopaxi.jpg'),
                const TitleSection(name: 'Parque Nacional Cotopaxi', location: 'UIO'),
                const ButtonSection(
                  mapsUrl: 'https://maps.app.goo.gl/DAYfZ31c3Mzrh9dm8',
                ),
                const TextSection(
                  description: 'Hogar de uno de los volcanes activos más altos y simétricos del planeta. Un paisaje andino espectacular ideal para el senderismo, el ciclismo de montaña y la fotografía.',
                ),

                // 4. BAÑOS DE AGUA SANTA
                const ImageSection(image: 'images/banos.jpg'),
                const TitleSection(name: 'Baños de Agua Santa', location: 'TUN'),
                const ButtonSection(mapsUrl: 'https://maps.app.goo.gl/3UYiS4yRnUbequ2H7',),
                const TextSection(
                  description: 'La capital de la aventura en Ecuador. Destaca por sus cascadas imponentes como el Pailón del Diablo, aguas termales relajantes y columpios al borde de abismos andinos.',
                ),

                // 5. CUENCA HISTÓRICA
                const ImageSection(image: 'images/centro_cuenca.jpg'),
                const TitleSection(name: 'Centro Histórico de Cuenca', location: 'CUE'),
                const ButtonSection(mapsUrl: 'https://maps.app.goo.gl/WZ953YdmCdjmzjXd9',),
                const TextSection(
                  description: 'Ciudad colonial cruzada por cuatro ríos pintorescos. Famosa por su majestuosa Catedral de la Inmaculada Concepción, calles de adoquines y artesanías tradicionales.',
                ),

                // 6. MALECÓN 2000
                const ImageSection(image: 'images/malecon.jpg'),
                const TitleSection(name: 'Malecón 2000', location: 'GYE'),
                const ButtonSection(
                  mapsUrl: 'https://maps.app.goo.gl/69DWjn8Py8hbYmwJ6',
                ),
                const TextSection(
                  description: 'Un moderno paseo fluvial a orillas del Río Guayas. Cuenta con monumentos históricos, jardines públicos, centros comerciales y una gran rueda moscovita con vistas a la ciudad.',
                ),

                // 7. MERCADO DE OTAVALO
                const ImageSection(image: 'images/mercado_otavalo.jpg'),
                const TitleSection(name: 'Mercado de Otavalo', location: 'IMB'),
                const ButtonSection(
                  mapsUrl: 'https://maps.app.goo.gl/dyeANiBcnTgasdDZA'),
                const TextSection(
                  description: 'La Plaza de Ponchos es el mercado artesanal indígena más grande de Sudamérica. Un festival de colores lleno de textiles tejidos a mano, joyas y arte folclórico local.',
                ),

                // 8. LAGUNA DE QUILOTOA
                const ImageSection(image: 'images/quilotoa.jpg'),
                const TitleSection(name: 'Laguna de Quilotoa', location: 'UIO'),
                const ButtonSection(mapsUrl: 'https://maps.app.goo.gl/arBLr4FnMosLuB4y5',),
                const TextSection(
                  description: 'Un cráter volcánico colapsado que alberga una laguna de aguas turquesas brillantes. Ofrece caminatas desafiantes a lo largo del borde y vistas panorámicas de los Andes.',
                ),

                // 9. PARQUE NACIONAL YASUNÍ
                const ImageSection(image: 'images/yasuni.jpg'),
                const TitleSection(name: 'Reserva Nacional Yasuní', location: 'NAP'),
                const ButtonSection(mapsUrl: 'https://maps.app.goo.gl/muvzssnH21EkBQ6b7',),
                const TextSection(
                  description: 'Uno de los lugares con mayor biodiversidad por metro cuadrado en todo el planeta. Una densa selva amazónica hogar de miles de especies y comunidades ancestrales.',
                ),

                // 10. PLAYA DE MONTAÑITA
                const ImageSection(image: 'images/playa.jpg'),
                const TitleSection(name: 'Playa de Montañita', location: 'GYE'),
                const ButtonSection(mapsUrl: 'https://maps.app.goo.gl/xYwPjeFkDeF7kmqz9',),
                const TextSection(
                  description: 'Epicentro del surf y la vida nocturna en la costa ecuatoriana. Atrae a viajeros internacionales gracias a sus olas consistentes, ambiente bohemio y cabañas rústicas.',
                ),

              ], // <-- CIERRE CORRECTO DE LA LISTA
            ),
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.name, required this.location});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(location, style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
          const FavoriteWidget(initialCount: 41),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  //Se crea el atributo de mapsurl
  final String mapsUrl;
  // Se agrega maps url al constructor para que el objeto se cre con un valor
  const ButtonSection({super.key, required this.mapsUrl});
//
  Future<void> _openMaps() async{
    final Uri url = Uri.parse(mapsUrl);
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }
  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),
        GestureDetector(onTap:_openMaps, 
        child: ButtonWithText(color: color, icon: Icons.near_me, label: 'ROUTE'),),
        ButtonWithText(color: color, icon: Icons.share, label: 'SHARE'),
      ],
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(description, softWrap: true),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 600, height: 240, fit: BoxFit.cover);
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key, this.initialCount = 41});

  final int initialCount;

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  late int _favoriteCount;

  @override
  void initState() {
    super.initState();
    _favoriteCount = widget.initialCount;
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          padding: const EdgeInsets.all(0),
          alignment: Alignment.center,
          icon: Icon(_isFavorited ? Icons.star : Icons.star_border),
          color: Colors.red[500],
          onPressed: _toggleFavorite,
        ),
        IntrinsicWidth(
          child: Text(
            '$_favoriteCount',
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
