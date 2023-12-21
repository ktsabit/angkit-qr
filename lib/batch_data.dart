import 'package:flutter/material.dart';

class BatchData extends StatefulWidget {
  const BatchData({super.key});

  @override
  State<BatchData> createState() => _BatchDataState();
}

class _BatchDataState extends State<BatchData> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: PageScrollPhysics(),
                    children: [
                      Container(
                        
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.red,
                        child: Image.network(
                            "https://i.pinimg.com/564x/79/4c/c9/794cc95253eb572428aa5029451044b6.jpg",
                            fit: BoxFit.cover,
                            ),
                      ),
                      Container(
                        
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.red,
                        child: Image.network(
                            "https://i.pinimg.com/564x/06/b0/13/06b013c7e7be7a0eccb771470ad09c42.jpg",
                            fit: BoxFit.cover,
                            ),
                      ),
                      Container(
                        
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.red,
                        child: Image.network(
                            "https://i.pinimg.com/564x/76/05/76/76057626d35b17fe4b7dc53d05d812ab.jpg",
                            fit: BoxFit.cover,
                            ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 5.0),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "ID ",
                                style: TextStyle(
                                    fontSize: 30,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "jf8U31",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          Chip(
                            // labelPadding: EdgeInsets.fromLTRB(0, -6, 0, -6),
                            // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            label: Text(
                              "Ayam",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            avatar: Image.asset("assets/img/chicken.png"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(
                                  color: const Color.fromARGB(0, 0, 0, 0),
                                  width: 0),
                            ),
                            backgroundColor: Color(0xff3BABEA),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    const Divider(
                      // height: 2,
                      thickness: 10,
                      color: const Color(0xffF6F6F6),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        children: [
                          Container(
                            // margin: const EdgeInsets.all(15.0),
                            width: 170,
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff66B357),
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 15),
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                  size: 65.0,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Ayam Sangat Segar",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff66B357)),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "360 Hari Setelah dipotong",
                                  style: TextStyle(
                                      fontSize: 12,
                                      // fontWeight: FontWeight.bold,
                                      color: Color(0xff909090)),
                                ),
                                SizedBox(height: 15),
                              ],
                            ),
                          ),
                          SizedBox(width: 15.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 22.0,
                                height: 22.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xff909090),
                                    width: 1.0,
                                  ),
                                ),
                                child: Image.asset("assets/img/farm.png"),
                              ),
                              Container(
                                width: 1.0,
                                height: 38.0,
                                decoration: BoxDecoration(
                                  color: Color(0xff909090),
                                ),
                              ),
                              Container(
                                width: 22.0,
                                height: 22.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xff909090),
                                    width: 1.5,
                                  ),
                                ),
                                child: Image.asset("assets/img/butcher.png"),
                              ),
                              Container(
                                width: 1.0,
                                height: 38.0,
                                decoration: BoxDecoration(
                                  color: Color(0xff909090),
                                ),
                              ),
                              Container(
                                width: 22.0,
                                height: 22.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xff909090),
                                    width: 1.0,
                                  ),
                                ),
                                child: Image.asset("assets/img/packing.png"),
                              ),
                            ],
                          ),
                          SizedBox(width: 8.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mulai Ternak",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "10 November 2023, 00:00",
                                style: TextStyle(
                                    fontSize: 12,
                                    // fontWeight: FontWeight.bold,
                                    color: Color(0xff909090)),
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                "Pemotongan Ternak",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "10 November 2023, 00:00",
                                style: TextStyle(
                                    fontSize: 12,
                                    // fontWeight: FontWeight.bold,
                                    color: Color(0xff909090)),
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                "Pengemasan Daging",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "10 November 2023, 00:00",
                                style: TextStyle(
                                    fontSize: 12,
                                    // fontWeight: FontWeight.bold,
                                    color: Color(0xff909090)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                const Divider(
                  // height: 2,
                  thickness: 10,
                  // indent: 20,
                  endIndent: 0,
                  color: const Color(0xffF6F6F6),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Detail Ternak",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        children: [
                          SizedBox(
                            width: 200.0,
                            child: Text(
                              "Spesies Ternak",
                              style: TextStyle(
                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                                color: Color(0xff909090),
                              ),
                            ),
                          ),
                          Text(
                            "Ayam Negeri",
                            style: TextStyle(
                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 5,
                        thickness: 1,
                        // indent: 20,
                        // endIndent: 0,
                        color: const Color(0xffF6F6F6),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 200.0,
                            child: Text(
                              "Berat Rata-rata Batch",
                              style: TextStyle(
                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                                color: Color(0xff909090),
                              ),
                            ),
                          ),
                          Text(
                            "2 Kg",
                            style: TextStyle(
                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 5,
                        thickness: 1,
                        // indent: 20,
                        // endIndent: 0,
                        color: const Color(0xffF6F6F6),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "Peternakan",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        children: [
                          SizedBox(
                            width: 200.0,
                            child: Text(
                              "Nama Peternakan",
                              style: TextStyle(
                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                                color: Color(0xff909090),
                              ),
                            ),
                          ),
                          Text(
                            "Kaisan TOoOmat",
                            style: TextStyle(
                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 5,
                        thickness: 1,
                        // indent: 20,
                        // endIndent: 0,
                        color: const Color(0xffF6F6F6),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 200.0,
                            child: Text(
                              "Lokasi Peternakan",
                              style: TextStyle(
                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                                color: Color(0xff909090),
                              ),
                            ),
                          ),
                          Text(
                            "Malang, Jawa Timur",
                            style: TextStyle(
                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 5,
                        thickness: 1,
                        // indent: 20,
                        // endIndent: 0,
                        color: const Color(0xffF6F6F6),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "Distributor",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        children: [
                          SizedBox(
                            width: 200.0,
                            child: Text(
                              "Nama Distributor",
                              style: TextStyle(
                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                                color: Color(0xff909090),
                              ),
                            ),
                          ),
                          Text(
                            "Distribulat",
                            style: TextStyle(
                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 5,
                        thickness: 1,
                        // indent: 20,
                        // endIndent: 0,
                        color: const Color(0xffF6F6F6),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 200.0,
                            child: Text(
                              "Lokasi Distributor",
                              style: TextStyle(
                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                                color: Color(0xff909090),
                              ),
                            ),
                          ),
                          Text(
                            "UNJ, 5 Km dari Matahari",
                            style: TextStyle(
                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 5,
                        thickness: 1,
                        // indent: 20,
                        // endIndent: 0,
                        color: const Color(0xffF6F6F6),
                      ),
                      SizedBox(height: 20.0),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                iconTheme: IconThemeData(color: Colors.white),
                backgroundColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                flexibleSpace: Container(
                  height: 70,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(126, 0, 0, 0),
                        Color(0x00000000),
                      ],
                    ),
                  ),
                ),
                elevation: 0.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
