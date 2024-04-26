import 'package:flutter/material.dart';

class RTOOfficeScreens extends StatelessWidget {
  const RTOOfficeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> rtoOffice = [
      {
        'cityCode': 'MH01',
        'state': 'Maharashtra',
        'city': 'Mumbai (Central)',
        'location': 'Wadala, Mumbai, Maharashtra - 400031',
        'link': 'https://transport.maharashtra.gov.in/mumbai-city',
        'call': '+91-22-24143182',
      },
      {
        'cityCode': 'MH02',
        'state': 'Maharashtra',
        'city': 'Pune',
        'location': 'Bibwewadi, Pune, Maharashtra - 411037',
        'link': 'https://transport.maharashtra.gov.in/pune-city',
        'call': '+91-20-24221001',
      },
      {
        'cityCode': 'MH03',
        'state': 'Maharashtra',
        'city': 'Nagpur',
        'location': 'Indora Chowk, Nagpur, Maharashtra - 440017',
        'link': 'https://transport.maharashtra.gov.in/nagpur-city',
        'call': '+91-712-2740344',
      },
      {
        'cityCode': 'MH04',
        'state': 'Maharashtra',
        'city': 'Nashik',
        'location': 'Parijat Nagar, Nashik, Maharashtra - 422005',
        'link': 'https://transport.maharashtra.gov.in/nashik-city',
        'call': '+91-253-2413421',
      },
      {
        'cityCode': 'MH05',
        'state': 'Maharashtra',
        'city': 'Aurangabad',
        'location': 'Jalna Road, Aurangabad, Maharashtra - 431005',
        'link': 'https://transport.maharashtra.gov.in/aurangabad-city',
        'call': '+91-240-2336604',
      },
      {
        'cityCode': 'MH06',
        'state': 'Maharashtra',
        'city': 'Thane',
        'location': 'Wagle Estate, Thane, Maharashtra - 400604',
        'link': 'https://transport.maharashtra.gov.in/thane-city',
        'call': '+91-22-25823100',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF124DAC),
        title: Text(
          "RTO/ARTO Offices",
          style: Theme.of(context).textTheme.headline6?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              letterSpacing: 1),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 26,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: rtoOffice.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 80,
                          height: 35,
                          decoration: BoxDecoration(
                            color: const Color(0xFF124DAC),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              rtoOffice[index]['cityCode'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          "${rtoOffice[index]['state']} | ${rtoOffice[index]['city']}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on),
                        const SizedBox(
                          width: 3,
                        ),
                        Expanded(child: Text(rtoOffice[index]['location'])),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.link),
                        const SizedBox(
                          width: 3,
                        ),
                        Expanded(child: Text(rtoOffice[index]['link'])),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.call),
                        const SizedBox(
                          width: 3,
                        ),
                        Expanded(child: Text(rtoOffice[index]['call'])),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
