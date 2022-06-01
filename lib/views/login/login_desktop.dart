part of login_view;

class _LoginDesktop extends StatefulWidget {
  final LoginViewModel viewModel;

  _LoginDesktop(this.viewModel);

  @override
  State<_LoginDesktop> createState() => _LoginDesktopState();
}

class _LoginDesktopState extends State<_LoginDesktop> {
  List<String> checkboxGroupValues;
  TextEditingController textController1;
  TextEditingController textController2;
  bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF78EA7D),
        automaticallyImplyLeading: false,
        title: Text(
          'Login Page',
          // style: FlutterFlowTheme.of(context).title2.override(
          //       fontFamily: 'Poppins',
          //       color: FlutterFlowTheme.of(context).lineColor,
          //       fontSize: 22,
          //  ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor:
          Colors.amber, //FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                  child: Container(
                    width: 550,
                    height: 550,
                    decoration: BoxDecoration(
                      color: Colors
                          .green, //FlutterFlowTheme.of(context).primaryBtnText,
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Color(0xFFA72828),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                          child: Image.network(
                            'data:image/jpeg;base64,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',
                            width: 125,
                            height: 125,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                          child: Form(
                            key: formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  110, 25, 110, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  TextFormField(
                                    controller: textController1,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                        hintText: 'Usuario',
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF39EF3F),
                                            width: 3,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF39EF3F),
                                            width: 3,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                        filled: true,
                                        fillColor: Colors.lightBlue[
                                            200] //FlutterFlowTheme.of(context).primaryBtnText,
                                        ),
                                    // style: FlutterFlowTheme.of(context)
                                    //     .subtitle1
                                    //     .override(
                                    //       fontFamily: 'Poppins',
                                    //       color: FlutterFlowTheme.of(context)
                                    //           .primaryText,
                                    //     ),
                                    maxLines: 1,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: TextFormField(
                                      controller: textController2,
                                      obscureText: !passwordVisibility,
                                      decoration: InputDecoration(
                                        hintText: 'Contraseña',
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF39EF3F),
                                            width: 3,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF39EF3F),
                                            width: 3,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                        filled: true,
                                        fillColor: Colors.lightBlue[
                                            200], //FlutterFlowTheme.of(context).primaryBtnText,
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => passwordVisibility =
                                                !passwordVisibility,
                                          ),
                                          child: Icon(
                                            passwordVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Color(0xFF757575),
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      // style: FlutterFlowTheme.of(context)
                                      //     .subtitle1
                                      //     .override(
                                      //       fontFamily: 'Poppins',
                                      //       color: FlutterFlowTheme.of(context)
                                      //           .primaryText,
                                      //     ),
                                      maxLines: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 15),
                                    // child: FlutterFlowCheckboxGroup(
                                    //   initiallySelected:
                                    //       checkboxGroupValues != null
                                    //           ? checkboxGroupValues
                                    //           : [],
                                    //   options: ['Recordar datos'].toList(),
                                    //   onChanged: (val) => setState(
                                    //       () => checkboxGroupValues = val),
                                    //   activeColor: Color(0xFF78EA7D),
                                    //   checkColor: FlutterFlowTheme.of(context)
                                    //       .primaryBtnText,
                                    //   checkboxBorderColor: Color(0xFF95A1AC),
                                    //   textStyle: FlutterFlowTheme.of(context)
                                    //       .subtitle2
                                    //       .override(
                                    //         fontFamily: 'Poppins',
                                    //         color: FlutterFlowTheme.of(context)
                                    //             .primaryText,
                                    //       ),
                                    // ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    // child: FFButtonWidget(
                                    //   onPressed: () {
                                    //     print('Button pressed ...');
                                    //   },
                                    //   text: 'Ingresar',
                                    //   options: FFButtonOptions(
                                    //     width: double.infinity,
                                    //     height: 40,
                                    //     color: Color(0xFF78EA7D),
                                    //     textStyle: FlutterFlowTheme.of(context)
                                    //         .subtitle2
                                    //         .override(
                                    //           fontFamily: 'Poppins',
                                    //           color:
                                    //               FlutterFlowTheme.of(context)
                                    //                   .primaryText,
                                    //         ),
                                    //     borderSide: BorderSide(
                                    //       color: Colors.transparent,
                                    //       width: 1,
                                    //     ),
                                    //     borderRadius: 12,
                                    //   ),
                                    // ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: InkWell(
                                        onTap: () async {},
                                        child: Text(
                                          '¿Olvidó su contraseña?',
                                          textAlign: TextAlign.start,
                                          // style: FlutterFlowTheme.of(context)
                                          //     .subtitle2
                                          //     .override(
                                          //       fontFamily: 'Poppins',
                                          //       color: Color(0xFF6E8DA2),
                                          //     ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: Text(
                                        'Registrarse',
                                        textAlign: TextAlign.start,
                                        // style: FlutterFlowTheme.of(context)
                                        //     .subtitle2
                                        //     .override(
                                        //       fontFamily: 'Poppins',
                                        //       color: Color(0xFF6E8DA2),
                                        //     ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
