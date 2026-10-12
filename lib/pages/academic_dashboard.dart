import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const double kWideBreakpoint = 700.0;

class DashboardApp extends StatefulWidget {
  const DashboardApp({super.key});

  @override
  State<DashboardApp> createState() => _DashboardAppState();
}

class _DashboardAppState extends State<DashboardApp> {
  bool isDark = false; // Dikembalikan ke false (Light Mode)

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.indigo,
      ),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: DashboardPage(
        isDark: isDark,
        onDarkChanged: (value) => setState(() => isDark = value),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  final bool isDark;
  final ValueChanged<bool> onDarkChanged;

  const DashboardPage({
    required this.isDark,
    required this.onDarkChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Dashboard'),
        actions: [
          Row(
            children: [
              Icon(isDark ? Icons.dark_mode : Icons.light_mode),
              const SizedBox(width: 4),
              Semantics(
                label: 'Toggle Dark Mode',
                hint: 'Mengubah tema antara terang dan gelap',
                child: CupertinoSwitch(value: isDark, onChanged: onDarkChanged),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final columns = constraints.maxWidth >= kWideBreakpoint ? 2 : 1;

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              // Eksperimen 3: Menambahkan Semantics pada Kartu Profil Utama
              Semantics(
                label: 'Profil Mahasiswa: Shinta Nur Widya Wati, NIM 24.52.0001, Program Studi S1 Teknologi Informasi',
                child: Card(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 28,
                          child: Icon(Icons.person, size: 32),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Shinta Nur Widya Wati',
                                style: Theme.of(context).textTheme.titleMedium
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'NIM: 24.52.0001 | S1 Teknologi Informasi',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Grid Kartu Informasi dengan Ikon Kustom
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: columns,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 2.6,
                children: const [
                  DashboardCard(
                    title: 'Assignments',
                    value: '8',
                    icon: Icons.assignment,
                  ),
                  DashboardCard(
                    title: 'Attendance',
                    value: '92%',
                    icon: Icons.check_circle,
                  ),
                  DashboardCard(
                    title: 'Portfolio',
                    value: 'Ready',
                    icon: Icons.folder,
                  ),
                  DashboardCard(
                    title: 'Current week',
                    value: '02',
                    icon: Icons.calendar_today,
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

// Eksperimen 3: Refactoring DashboardCard dengan dukungan Ikon & Semantics detail
class DashboardCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData? icon;

  const DashboardCard({
    required this.title,
    required this.value,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: '$title: $value',
      hint: 'Kartu informasi $title',
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              if (icon != null) ...[
                Icon(icon, color: Theme.of(context).colorScheme.primary),
                const SizedBox(width: 12),
              ],
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              Text(
                value,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
