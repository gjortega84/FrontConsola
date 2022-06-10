part of home_view;

class _HomeDesktop extends StatefulWidget {
  final HomeViewModel viewModel;

  const _HomeDesktop(this.viewModel);

  @override
  State<_HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<_HomeDesktop> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.06),
        child: AppBar(
          backgroundColor: const Color(0xFF421BBC),
          automaticallyImplyLeading: false,
          leading: const Icon(
            Icons.monitor,
            color: Colors.white,
            size: 30,
          ),
          flexibleSpace: const Align(
            alignment: AlignmentDirectional(-0.9, 0.9),
            child: Text(
              'Consola APK',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Open Sans',
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          actions: [
            Align(
              alignment: const AlignmentDirectional(-0.05, -0.05),
              child: IconButton(
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
          ],
          elevation: 5,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: const BoxDecoration(
              color: Color(0xFFEEEEEE),
              shape: BoxShape.rectangle,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: Color(0xFF080808),
                        offset: Offset(0, -10),
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: double.infinity,
                          child: ExpansionPanelList(
                            expansionCallback: (int index, bool isExpanded) {
                              setState(() {
                                widget.viewModel.isExpanded = !isExpanded;
                              });
                            },
                            children: [
                              ExpansionPanel(
                                headerBuilder:
                                    (BuildContext context, bool isExpanded) {
                                  return const ListTile(
                                    title: Text('Instituciones'),
                                  );
                                },
                                body: Column(
                                  children: [
                                    const ListTile(
                                      title: Text("Agregar Institucion"),
                                    ),
                                    ListTile(
                                      title: TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                              "Modificar Institucion")),
                                    ),
                                    ListTile(
                                      title: TextButton(
                                          onPressed: () {},
                                          child:
                                              const Text("Borrar Institucion")),
                                    ),
                                  ],
                                ),
                                isExpanded: widget.viewModel.isExpanded,
                              ),
                            ],
                          )),
                      ListTile(
                        title: const Text(
                          "Administrar Menu",
                        ),
                        onTap: () async {
                          await widget.viewModel.getMenus();
                        },
                      ),
                      ListTile(
                        title: TextButton(
                          child: Text("Administrar Estilos"),
                          onPressed: () {
                            print('Button pressed ...');
                          },
                        ),
                      ),
                      ListTile(
                        title: TextButton(
                          child: Text("Administrar Aplicaciones"),
                          onPressed: () {
                            print('Button pressed ...');
                          },
                        ),
                      ),
                      ListTile(
                        title: TextButton(
                          child: Text("Terminos y Condiciones"),
                          onPressed: () {
                            print('Button pressed ...');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
