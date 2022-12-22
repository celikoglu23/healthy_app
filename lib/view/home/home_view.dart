import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobile_template/core/components/scaffold/custom_scaffold.dart';
import 'package:flutter_mobile_template/core/components/text/custom_text.dart';
import 'package:flutter_mobile_template/core/constants/app/app_constants.dart';
import 'package:flutter_mobile_template/core/extensions/num_extensions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key) {
    _stream = _reference.snapshots();
  }

  final CollectionReference _reference =
      FirebaseFirestore.instance.collection('static');
  late Stream<QuerySnapshot> _stream;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          StreamBuilder<QuerySnapshot>(
              stream: _stream,
              builder: (BuildContext context, AsyncSnapshot snap) {
                if (snap.hasError) {
                  return Center(
                      child: Text('Şöyle bir hata oluştu: ${snap.error}'));
                } else if (snap.hasData) {
                  QuerySnapshot querySnapshot = snap.data;
                  List<QueryDocumentSnapshot> documents = querySnapshot.docs;
                  List<Map> items =
                      documents.map((e) => e.data() as Map).toList();
                  return ListView.builder(
                    itemCount: items.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      Map thisItem = items[index];
                      return Column(
                        children: [
                          Image.network(
                            '${thisItem['image']}',
                          ),
                          1.h.ph,
                          CustomText(
                            '${thisItem['mission']}',
                            textStyle: TextStyle(
                                color: AppConstants.black, fontSize: 17.sp),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  return const CustomText("Hata");
                }
              }),
        ],
      ),
    );
  }
}
