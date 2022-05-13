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
                                    TextButton(
                                        onPressed: () {},
                                        child:
                                            const Text("Agregar Institucion")),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                            "Modificar Institucion")),
                                    TextButton(
                                        onPressed: () {},
                                        child:
                                            const Text("Borrar Institucion")),
                                  ],
                                ),
                                isExpanded: widget.viewModel.isExpanded,
                              ),
                            ],
                          )),

                      /* Container(
                        width: double.infinity,
                        //color: FlutterFlowTheme.of(context).primaryBackground,
                        child: Expandable(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Align(
                              alignment: AlignmentDirectional(0.4, 0),
                              child: Text(
                                'Institucion',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                            collapsed: Container(
                              width: 0,
                              height: 0,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                              ),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0x8A000000),
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 0),
                                  child: Image.network(
                                    'https://picsum.photos/seed/957/600',
                                    width: MediaQuery.of(context).size.width,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),*/
                      ElevatedButton(
                        child: Text("Administrar Menu"),
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        /*text: 'Menus',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                          elevation: 2,
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 0,
                          ),
                          borderRadius: 0,
                        ),*/
                      ),
                      ElevatedButton(
                        child: Text("Administrar Estilos"),
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        /*text: 'Estilos',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.normal,
                              ),
                          elevation: 2,
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 0,
                          ),
                          borderRadius: 0,
                        ),*/
                      ),
                      ElevatedButton(
                        child: Text("Administrar Aplicaciones"),
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        /* text: 'Aplicaciones',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                          elevation: 2,
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 0,
                          ),
                          borderRadius: 0,
                        ),*/
                      ),
                      ElevatedButton(
                        child: Text("Terminos y Condiciones"),
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        /*text: 'Terminos',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.normal,
                              ),
                          elevation: 2,
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 0,
                          ),
                          borderRadius: 0,
                        ),*/
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
