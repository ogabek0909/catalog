import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuBarWidget extends StatelessWidget {
  const MenuBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return SizedBox(
      width: deviceSize.width > 1271 ? 456 : deviceSize.width - 110,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WCSksMD_tiMuaUoUz51BrApdhoCGYQhtyO6dIJ_xQjC6-hCGOkpCzwb7aXQKLS8OzBg&usqp=CAU',
              fit: BoxFit.cover,
              height: 456,
              // width: 456,
            ),
          ),
          const SizedBox(height: 26),
          Row(
            children: const [
              SizedBox(
                height: 116,
                width: 110,
                child: Placeholder(),
              ),
              Expanded(
                child: Text(
                  "\"SAMARQAND AVTOMOBIL ZAVODI\" MCHJ qo‘shma korxonasi ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(52, 58, 64, 1),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            " SAMARQAND AVTO ZAVOMI, MChJ QK (“SamAvto”) tijorat avtomobillari: avtobuslar, yuk mashinalari, ISUZU shassilari asosida ixtisoslashtirilgan transport vositalari va pikaplar ishlab chiqaradi. 2007 yildan boshlab zavod Yaponiyaning “ISUZU Motors LTD” va “ITOCHU Corporation” kabi kompaniyalari bilan faol hamkorlik qila boshladi. Kompaniyaning asosiy vazifalari: yo'lovchilarning qulay harakatlanishi va tovarlarni tezkor yetkazib berish uchun optimal echimlarni yaratish shahar va qishloq infratuzilmasini rivojlantirish ishonchli, xavfsiz va bardoshli mahsulotlar bilan ta'minlash",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 10),
          const InformationWidget(
            type: 'Manzil',
            information: Text(
              "Samarqand viloyati, Samarqand sh., S.Buxoriy ko'chasi, 5-uy",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            icon: Icons.location_on_outlined,
          ),
          const InformationWidget(
            icon: Icons.person,
            information: Text('Israilova Munisxon Rustamovna'),
            type: "Sotuv bo‘limi ma'suli F.I.O",
          ),
          const InformationWidget(
            icon: Icons.call,
            information: Text(
              '+998 78 140 64 64',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
            type: 'Telefon raqami',
          ),
          const InformationWidget(
            icon: Icons.email,
            information: Text('info@samauto.uz'),
            type: 'Elektron pochta',
          ),
          const InformationWidget(
            icon: Icons.public_outlined,
            information: Text('www.samauto.uz'),
            type: 'Veb-sayt',
          ),
          const InformationWidget(
            icon: Icons.card_membership_outlined,
            information: Text(
              'ISO 9001:2015, ISO 14001:2015, ISO 45001:2018, ISO 50001:2018',
            ),
            type: ' Muvofiqlik sertifikatlari',
          ),
          InformationWidget(
            icon: Icons.link,
            information: FittedBox(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.instagram),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.facebook),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.telegram),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.whatsapp),
                  ),
                ],
              ),
            ),
            type: 'Ijtimoiy tarmoqlardagi sahifalar',
          ),
        ],
      ),
    );
  }
}

class InformationWidget extends StatelessWidget {
  final String type;
  final IconData icon;
  final Widget information;
  const InformationWidget({
    super.key,
    required this.icon,
    required this.information,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17),
      child: Row(
        children: [
          Icon(
            icon,
            size: 24,
            color: Colors.blue,
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 3),
                information,
              ],
            ),
          )
        ],
      ),
    );
  }
}
