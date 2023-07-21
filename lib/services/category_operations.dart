// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:myntra_insider/models/categories.dart';

class CategoryOperations {
  CategoryOperations._();
  static List<Category> getCategory() {
    return <Category>[
      Category(
          categoryName: 'Men',
          imageUrl:
              'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/17593278/2022/7/6/d53617f3-7840-4f9d-af76-f8c25aa6e3f51657110309550-Anouk-Men-Kurtas-521657110309090-1.jpg'),
      Category(
          categoryName: 'Women',
          imageUrl:
              'https://southindianactress.in/wp-content/uploads/2022/07/Samantha-Myntra-1.jpg'),
      Category(
          categoryName: 'Kids',
          imageUrl:
              'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/17605058/2022/3/22/aa1f5424-f0b4-4ab9-a612-1eb97a618bf61647926962886LittleBansiBoysYellowEthnicMotifsPrintedPureCottonKurtawithD1.jpg'),
      Category(
          categoryName: 'Footwear',
          imageUrl:
              'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/21455270/2023/1/8/c0b13c1f-611d-4432-bc6d-e8bb463b01fc1673130611988RINDASGreyPartyBlockSandals1.jpg'),
      Category(
          categoryName: 'Beauty',
          imageUrl:
              'https://inc42.com/wp-content/uploads/2018/08/cosmetics.jpg'),
      Category(
          categoryName: 'Accessories',
          imageUrl:
              'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/16203688/2023/1/27/605aa474-8db1-4598-a958-6e0c5ce5078a1674817826033-Accessorize-Cream-Coloured-Talia-Baguette-Shoulder-Bag-with--1.jpg')
    ];
  }
}
