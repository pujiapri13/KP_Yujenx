// ignore_for_file: unused_local_variable, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_penduduk_umur.dart';
import 'package:flutter/material.dart';

class SensusA extends StatefulWidget {
  const SensusA({super.key});

  @override
  State<SensusA> createState() => _SensusAState();
}

RepositoryPendudukUmur repositorypendudukumur = RepositoryPendudukUmur();

class _SensusAState extends State<SensusA> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWeight = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositorypendudukumur.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipenduduk = snapshot.data as List;
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              
              // isi data
              String thn = isipenduduk[index = 0].tanggal[0] +
                  isipenduduk[index = 0].tanggal[1] +
                  isipenduduk[index = 0].tanggal[2] +
                  isipenduduk[index = 0].tanggal[3];
              int lk1 = isipenduduk[index = 0].a;
              int lk2 = isipenduduk[index = 0].b;
              int lk3 = isipenduduk[index = 0].c;
              int lk4 = isipenduduk[index = 0].d;
              int lk5 = isipenduduk[index = 0].e;
              int lk6 = isipenduduk[index = 0].f;
              int lk7 = isipenduduk[index = 0].g;
              int lk8 = isipenduduk[index = 0].h;
              int lk9 = isipenduduk[index = 0].i;
              int lk10 = isipenduduk[index = 0].j;
              int lk11 = isipenduduk[index = 0].k;
              int lk12 = isipenduduk[index = 0].l;
              int lk13 = isipenduduk[index = 0].m;
              int lk14 = isipenduduk[index = 0].n;
              int lk15 = isipenduduk[index = 0].o;
              int lk16 = isipenduduk[index = 0].p;
              int lkTotal = isipenduduk[index = 0].total;
              int pr1 = isipenduduk[index = 1].a;
              int pr2 = isipenduduk[index = 1].b;
              int pr3 = isipenduduk[index = 1].c;
              int pr4 = isipenduduk[index = 1].d;
              int pr5 = isipenduduk[index = 1].e;
              int pr6 = isipenduduk[index = 1].f;
              int pr7 = isipenduduk[index = 1].g;
              int pr8 = isipenduduk[index = 1].h;
              int pr9 = isipenduduk[index = 1].i;
              int pr10 = isipenduduk[index = 1].j;
              int pr11 = isipenduduk[index = 1].k;
              int pr12 = isipenduduk[index = 1].l;
              int pr13 = isipenduduk[index = 1].m;
              int pr14 = isipenduduk[index = 1].n;
              int pr15 = isipenduduk[index = 1].o;
              int pr16 = isipenduduk[index = 1].p;
              int prTotal = isipenduduk[index = 1].total;
              double persenPostGenZ = 11.61;
              double totalPostGenZ = 225713;
              double persenGenZ = 24.95;
              double totalGenZ = 485335;
              double persenMilenial = 25.16;
              double totalMilenial = 489226;
              double persenGenX = 21.72;
              double totalGenX = 422338;
              double persenBabyBoomer = 14.49;
              double totalBabyBoomer = 281899;
              double persenPreBoomer = 2.07;
              double totalPreBoomer = 40306;
              
              return Container(
                margin: const EdgeInsets.all(2),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: screenHeight * 0.1,
                      margin: const EdgeInsets.only(bottom: 2),
                      color: Colors.transparent,
                      child: Center(
                        child: Text(
                          'Sensus Penduduk $thn (SP$thn) mencatat jumlah penduduk Kabupaten Cilacap sebanyak : ',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      child: Center(
                          child: Text(
                        (lkTotal + prTotal).toString(),
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w800,
                          color: Color.fromRGBO(47, 182, 224, 1),
                        ),
                      )),
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Text(
                                  "$lkTotal",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromRGBO(47, 182, 224, 1),
                                  ),
                                ),
                                const Text("jiwa LAKI-LAKI")
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              color: Colors.transparent,
                              child: Image.asset(
                                './assets/images/sensus/sensus.png',
                                width: 80,
                                height: 80,
                              ),
                            ),
                            Text(
                              "Rasio ${(lkTotal / prTotal * 100).toStringAsFixed(2)}",
                              style: const TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Text(
                                  "$prTotal",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromRGBO(47, 182, 224, 1),
                                  ),
                                ),
                                const Text("jiwa PEREMPUAN")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: screenHeight * 0.05,
                      thickness: 3,
                    ),
                    SizedBox(
                      width: screenWeight,
                      child: const Text(
                        "Komposisi Penduduk menurut Generasi",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Divider(
                      color: Colors.transparent,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: Text(
                                "Post Generasi Z : ${persenPostGenZ.toStringAsFixed(2)}%/${totalPostGenZ.toStringAsFixed(0)}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang s/d 7 tahun",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: Text(
                                "Generasi Z : ${persenGenZ.toStringAsFixed(2)}%/${totalGenZ.toStringAsFixed(0)}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang 8-23 tahun",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: Text(
                                "Milenial : ${persenMilenial.toStringAsFixed(2)}%/${totalMilenial.toStringAsFixed(0)}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang 24-39 tahun",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: Text(
                                "Generasi X : ${persenGenX.toStringAsFixed(2)}%/${totalGenX.toStringAsFixed(0)}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang 40-55 tahun",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: Text(
                                "Baby Boomer : ${persenBabyBoomer.toStringAsFixed(2)}%/${totalBabyBoomer.toStringAsFixed(0)}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang 56-74 tahun",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: Text(
                                "Pre-Boomer : ${persenPreBoomer.toStringAsFixed(2)}%/${totalPreBoomer.toStringAsFixed(0)}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang 75 tahun keatas",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: screenWeight * 0.5,
                child: const LinearProgressIndicator(
                  color: Colors.cyan,
                  minHeight: 1,
                ),
              ),
              const Text("Memuat Data"),
            ],
          );
        }
        if (snapshot.connectionState == ConnectionState.none) {
          return Center(
              child: Column(
            children: const [
              Icon(Icons.error_outline),
              Text("Data Kosong"),
            ],
          ));
        } else {
          return Column(
            children: const [
              Icon(Icons.error_outline),
              Text("DATABASE ERROR"),
            ],
          );
        }
      },
    );
  }
}