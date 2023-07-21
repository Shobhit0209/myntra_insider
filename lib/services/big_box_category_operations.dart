// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:myntra_insider/models/big_box_categories.dart';

class BigBoxCategoryOPeration {
  BigBoxCategoryOPeration._();
  static List<BigBoxCategory> getBigBoxCategory() {
    return <BigBoxCategory>[
      BigBoxCategory(
          imgesUrl:
              'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/17593278/2022/7/6/d53617f3-7840-4f9d-af76-f8c25aa6e3f51657110309550-Anouk-Men-Kurtas-521657110309090-1.jpg'),
      BigBoxCategory(
          imgesUrl:
              'https://southindianactress.in/wp-content/uploads/2022/07/Samantha-Myntra-1.jpg'),
      BigBoxCategory(
          imgesUrl:
              'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/17605058/2022/3/22/aa1f5424-f0b4-4ab9-a612-1eb97a618bf61647926962886LittleBansiBoysYellowEthnicMotifsPrintedPureCottonKurtawithD1.jpg'),
    ];
  }
}
