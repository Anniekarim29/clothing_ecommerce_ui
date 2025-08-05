import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> orders = [
      {
        'id': 'A001',
        'date': '2025-07-30',
        'total': 74.98,
        'status': 'Delivered',
      },
      {
        'id': 'A002',
        'date': '2025-07-25',
        'total': 59.99,
        'status': 'Shipped',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade800,
        centerTitle: true,
        title: Text(
          'My Orders',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF141e30), Color(0xFF243b55)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: orders.isEmpty
            ? Center(
          child: Text(
            'No orders placed yet.',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
            : ListView.builder(
          itemCount: orders.length,
          itemBuilder: (ctx, index) {
            final order = orders[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              color: Colors.white12,
              child: ListTile(
                leading: const Icon(Icons.receipt_long, color: Colors.white),
                title: Text(
                  'Order #${order['id']}',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  '${order['date']}  •  ${order['status']}',
                  style: GoogleFonts.montserrat(color: Colors.white70),
                ),
                trailing: Text(
                  '\$${order['total'].toStringAsFixed(2)}',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
