import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/app_colors.dart';

showCouponCodePopUp(context){
  showCupertinoModalPopup(
      context: context,
      builder: (context) => Center(
        child: Container(
          height: MediaQuery.of(context)
              .size
              .height *
              0.64,
          width: MediaQuery.of(context)
              .size
              .width *
              0.3,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
              BorderRadius.circular(
                  20),
              boxShadow: [
                BoxShadow(
                    offset:
                    const Offset(
                        1, 1),
                    color: Colors.black
                        .withOpacity(
                        0.2))
              ]),
          child: Column(
            mainAxisAlignment:
            MainAxisAlignment.start,
            crossAxisAlignment:
            CrossAxisAlignment
                .center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: AppColors
                            .greyColor
                            .withOpacity(
                            0.2))),
                child: Image.asset(
                  'assets/images/meow.png',
                  height: 50,
                  width: 80,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Material(
                child: Text(
                  '10% Off Storewide at Klassy Network',
                  style: TextStyle(
                      fontWeight:
                      FontWeight
                          .w700,
                      fontSize: 20,
                      color:
                      Colors.black),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 80,
                width: 200,
                padding:
                const EdgeInsets
                    .all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: AppColors
                            .greyColor
                            .withOpacity(
                            0.2))),
                child: const Center(
                  child: Material(
                    child: Text(
                      'MEGAN10',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight:
                          FontWeight
                              .w900,
                          color: AppColors
                              .blackColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                      color: AppColors
                          .greyColor,
                      borderRadius:
                      BorderRadius
                          .circular(
                          8)),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .center,
                    children: const [
                      Center(
                        child: Material(
                          color: Colors
                              .transparent,
                          child: Text(
                            'Copy',
                            style:
                            TextStyle(
                              fontSize:
                              16,
                              fontWeight:
                              FontWeight
                                  .w500,
                              color: AppColors
                                  .whiteColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.copy,
                        size: 16,
                        color: AppColors
                            .whiteColor,
                      )
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height: 42,
                  width: MediaQuery.of(
                      context)
                      .size
                      .width *
                      0.17,
                  padding:
                  const EdgeInsets
                      .symmetric(
                      horizontal:
                      20,vertical: 5),
                  decoration: BoxDecoration(
                      color: AppColors
                          .greenColor,
                      borderRadius:
                      BorderRadius
                          .circular(
                          8)),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .center,
                    crossAxisAlignment:
                    CrossAxisAlignment
                        .center,
                    children: const [
                      Material(
                        color: Colors
                            .transparent,
                        child: Text(
                          'Continue at whoosh.com',
                          style:
                          TextStyle(
                            fontSize:
                            17,
                            fontWeight:
                            FontWeight
                                .w400,
                            color: AppColors
                                .whiteColor,
                          ),
                        ),
                      ),
                      Icon(
                        Icons
                            .arrow_forward,
                        color: Colors
                            .white,
                        size: 18,
                      )
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Material(
                    color: Colors
                        .transparent,
                    child: Padding(
                        padding: const EdgeInsets
                            .symmetric(
                            horizontal:
                            20),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text:
                              'Copy the code, then go to ',
                              style: const TextStyle(
                                  fontSize:
                                  14,
                                  fontWeight: FontWeight
                                      .w400,
                                  color:
                                  AppColors.blackColor),
                              children: [
                                TextSpan(
                                    text:
                                    'whoosh.com ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blueColor.withOpacity(0.7))),
                                const TextSpan(
                                    text:
                                    'and paste it in during checkout.Your savings will be applied ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.blackColor)),

                              ]),
                        ))),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(
                    context)
                    .size
                    .width *
                    0.3,
                child: const Material(
                  color: Colors
                      .transparent,
                  child: Center(
                      child: Text(
                        'Did this code work?',
                        style: TextStyle(
                            fontSize: 14),
                      )),
                ),
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment
                    .center,
                children: [
                  Container(
                    height: 30,
                    width: 60,
                    padding:
                    const EdgeInsets
                        .symmetric(
                        horizontal:
                        5),
                    decoration: BoxDecoration(
                        color: AppColors
                            .greyColor
                            .withOpacity(
                            0.1),
                        borderRadius:
                        BorderRadius
                            .circular(
                            10)),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                      children: const [
                        Icon(
                          Icons
                              .thumb_up_off_alt_outlined,
                          color: AppColors
                              .greenColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Yes',
                          style: TextStyle(
                              fontSize:
                              12,
                              color: AppColors
                                  .blackColor),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 30,
                    width: 60,
                    padding:
                    const EdgeInsets
                        .symmetric(
                        horizontal:
                        5),
                    decoration: BoxDecoration(
                        color: AppColors
                            .greyColor
                            .withOpacity(
                            0.1),
                        borderRadius:
                        BorderRadius
                            .circular(
                            10)),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                      children: const [
                        Icon(
                          Icons
                              .thumb_down_off_alt_outlined,
                          color: AppColors
                              .redColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'No',
                          style: TextStyle(
                              fontSize:
                              12,
                              color: AppColors
                                  .blackColor),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ));
}