import 'package:flutter/material.dart';

class CouponsListView extends StatelessWidget {
  const CouponsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Coupons',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.grey),
          ),
          SizedBox(
            height: 310,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.12,
                      margin: const EdgeInsets.only(
                          right: 20, bottom: 10, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(2, 2),
                                blurRadius: 2,
                                color: Colors.black.withOpacity(0.2))
                          ]),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    topLeft: Radius.circular(12)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/model.jpeg'),
                                    fit: BoxFit.fill)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '50% Off ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  '\$50 Off Storewide (Minimum Order: \$4.000) at XOTIC...',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                ),
                                const Text(
                                  'Visit the store now',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline),
                                ),
                                const SizedBox(height: 20,),
                                Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green,
                                      ),
                                      child: const Icon(
                                        Icons.check,
                                        size: 8,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'Verified',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 30,
                                  width: 150,
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  decoration:  BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(8),

                                  ),
                                  child: const Center(child: Text('Shop with code',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.white),)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
