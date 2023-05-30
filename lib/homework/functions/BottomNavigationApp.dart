import 'package:flutter/material.dart';
BottomNavigationBar BottomNavigationApp() {
    return BottomNavigationBar(
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      items:const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home'
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.payment,
          ),
           label: 'voucher'
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.account_balance_wallet,
          ),
           label: 'Wallet'
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
           label: 'Setting'
          ),
      ]
      );
}