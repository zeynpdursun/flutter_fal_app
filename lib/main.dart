import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const uygulamam());
}

class uygulamam extends StatelessWidget {
  const uygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(221, 116, 14, 85),
          title: Center(
            child: Text(
              'GÜNÜN FALİ',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: fallar(),
      ),
    );
  }
}

class fallar extends StatefulWidget {
  const fallar({Key? key}) : super(key: key);

  @override
  State<fallar> createState() => _fallarState();
}

class _fallarState extends State<fallar> {
  int yanitindex = 0;

  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('asset/magic.jpg'),
              radius: 100,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          FlatButton(
            onPressed: (() {
              setState(() {
                yanitindex = Random().nextInt(5) + 1;
              });
            }),
            child: Container(
                height: 50,
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Center(
                      child: Text(
                        'AŞK DURUMU',
                        style: TextStyle(color: Colors.pink, fontSize: 20),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                yanitindex = Random().nextInt(5) + 6;
              });
            },
            child: Container(
                height: 50,
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.euro,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Center(
                      child: Text(
                        'PARA DURUMU',
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                    ),
                  ],
                )),
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                yanitindex = Random().nextInt(5) + 11;
              });
            },
            child: Container(
                height: 50,
                margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.settings_system_daydream,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Center(
                      child: Text(
                        'GÜNLÜK TAVSİYE',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                height: 150,
                child: Text(
                  yanitlar[yanitindex],
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
