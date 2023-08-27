require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmFichaTeste()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmFichaTeste");
    obj:setFormType("sheetTemplate");
    obj:setDataType("DATA_TYPE_AQUI");
    obj:setTitle("Naruto No Atarashi Ninja Paradise");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Informações");
    obj.tab1:setName("tab1");

    obj.frmFichaTeste1 = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFichaTeste1:setParent(obj.tab1);
    obj.frmFichaTeste1:setFormType("sheetTemplate");
    obj.frmFichaTeste1:setDataType("DATA_TYPE_AQUI");
    obj.frmFichaTeste1:setTitle("Naruto No Atarashi Ninja Paradise");
    obj.frmFichaTeste1:setName("frmFichaTeste1");
    obj.frmFichaTeste1:setAlign("client");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.frmFichaTeste1);
    obj.flowLayout1:setAlign("client");
    obj.flowLayout1:setHorzAlign("leading");
    obj.flowLayout1:setLineSpacing(16.0);
    obj.flowLayout1:setMargins({left=20, top=20, bottom=20, right=20});
    obj.flowLayout1:setMaxControlsPerLine(2);
    obj.flowLayout1:setName("flowLayout1");

    obj.imagem_avatar = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.imagem_avatar:setParent(obj.flowLayout1);
    obj.imagem_avatar:setVertAlign("leading");
    obj.imagem_avatar:setName("imagem_avatar");
    obj.imagem_avatar:setMaxWidth(256.0);
    obj.imagem_avatar:setHeight(410);
    obj.imagem_avatar:setMargins({left=10, top=0, bottom=0, right=0});

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.imagem_avatar);
    obj.image1:setWidth(256);
    obj.image1:setHeight(410);
    obj.image1:setStyle("autoFit");
    obj.image1:setSRC("https://s2-techtudo.glbimg.com/uC8istX2sf9KQG_hMw4aenaHEiU=/1200x/smart/filters:cover():strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2022/6/Z/BtyF8UT5aeLFwmccA9CQ/fotonaruto2.jpg");
    obj.image1:setEditable(true);
    obj.image1:setName("image1");

    obj.flowPart1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout1);
    obj.flowPart1:setHeight(800);
    obj.flowPart1:setMaxWidth(1024);
    obj.flowPart1:setName("flowPart1");
    obj.flowPart1:setMargins({left=5, right=5, top=5, bottom=5});

    obj.flowLayout2 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout2:setParent(obj.flowPart1);
    obj.flowLayout2:setAlign("client");
    obj.flowLayout2:setMaxControlsPerLine(1);
    obj.flowLayout2:setHorzAlign("leading");
    obj.flowLayout2:setName("flowLayout2");

    obj.flowPart2 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart2:setParent(obj.flowLayout2);
    obj.flowPart2:setVertAlign("trailing");
    obj.flowPart2:setMaxWidth(768.0);
    obj.flowPart2:setName("flowPart2");
    obj.flowPart2:setMargins({left=5, right=5, top=5, bottom=5});

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.flowPart2);
    obj.label1:setAlign("left");
    obj.label1:setText("Nome");
    obj.label1:setFontSize(36);
    obj.label1:setName("label1");
    obj.label1:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.flowPart2);
    obj.edit1:setAlign("client");
    obj.edit1:setFontSize(36);
    obj.edit1:setName("edit1");
    obj.edit1:setFontFamily("MADE TOMMY");

    obj.flowPart3 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart3:setParent(obj.flowLayout2);
    obj.flowPart3:setVertAlign("trailing");
    obj.flowPart3:setMaxWidth(768.0);
    obj.flowPart3:setName("flowPart3");
    obj.flowPart3:setMargins({left=5, right=5, top=5, bottom=5});

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.flowPart3);
    obj.label2:setAlign("left");
    obj.label2:setText("Idade");
    obj.label2:setFontSize(36);
    obj.label2:setName("label2");
    obj.label2:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.flowPart3);
    obj.edit2:setAlign("left");
    obj.edit2:setFontSize(36);
    obj.edit2:setName("edit2");
    obj.edit2:setFontFamily("MADE TOMMY");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.flowPart3);
    obj.label3:setAlign("left");
    obj.label3:setText("Vila Natal");
    obj.label3:setFontSize(36);
    obj.label3:setAutoSize(true);
    obj.label3:setWordWrap(false);
    obj.label3:setMargins({left=20, top=0, bottom=0, right=20});
    obj.label3:setName("label3");
    obj.label3:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.flowPart3);
    obj.edit3:setAlign("left");
    obj.edit3:setWidth(360);
    obj.edit3:setFontSize(36);
    obj.edit3:setName("edit3");
    obj.edit3:setFontFamily("MADE TOMMY");

    obj.flowPart4 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart4:setParent(obj.flowLayout2);
    obj.flowPart4:setVertAlign("trailing");
    obj.flowPart4:setMaxWidth(768.0);
    obj.flowPart4:setName("flowPart4");
    obj.flowPart4:setMargins({left=5, right=5, top=5, bottom=5});

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.flowPart4);
    obj.label4:setAlign("left");
    obj.label4:setText("Clã");
    obj.label4:setFontSize(36);
    obj.label4:setName("label4");
    obj.label4:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.flowPart4);
    obj.comboBox1:setAlign("left");
    obj.comboBox1:setItems({'Aburame', 'Hyuga', 'Inuzuka', 'Sarutobi', 'Senju', 'Uchiha', 'Uzumaki', 'Nara', 'Akimichi', 'Yamanaka'});
    obj.comboBox1:setWidth(128);
    obj.comboBox1:setFontSize(18);
    obj.comboBox1:setName("comboBox1");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.flowPart4);
    obj.label5:setAlign("left");
    obj.label5:setText("Elemento Base");
    obj.label5:setAutoSize(true);
    obj.label5:setWordWrap(false);
    obj.label5:setMargins({left=20, top=0, bottom=0, right=20});
    obj.label5:setFontSize(36);
    obj.label5:setName("label5");
    obj.label5:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");

    obj.comboBoxElemento = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBoxElemento:setParent(obj.flowPart4);
    obj.comboBoxElemento:setName("comboBoxElemento");
    obj.comboBoxElemento:setAlign("left");
    obj.comboBoxElemento:setItems({'', 'Ar', 'Fogo', 'Agua', 'Terra', 'Raio'});
    obj.comboBoxElemento:setValues({'', 'Ar', 'Fogo', 'Agua', 'Terra', 'Raio'});
    obj.comboBoxElemento:setValue("nil");
    obj.comboBoxElemento:setWidth(128);
    obj.comboBoxElemento:setFontSize(18);
    obj.comboBoxElemento:setField("comboBoxElemento");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.flowPart4);
    obj.image2:setAlign("client");
    obj.image2:setField("imagemElemento");
    obj.image2:setWidth(36);
    obj.image2:setHeight(36);
    obj.image2:setEditable(true);
    obj.image2:setVisible(true);
    obj.image2:setName("image2");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.flowPart4);
    obj.dataLink1:setField("comboBoxElemento");
    obj.dataLink1:setName("dataLink1");

    obj.flowPart5 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart5:setParent(obj.flowLayout2);
    obj.flowPart5:setMaxWidth(768.0);
    obj.flowPart5:setName("flowPart5");
    obj.flowPart5:setMargins({left=5, right=5, top=5, bottom=5});

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.flowPart5);
    obj.label6:setAlign("left");
    obj.label6:setText("Nivel Ninja");
    obj.label6:setFontSize(32);
    obj.label6:setAutoSize(true);
    obj.label6:setWordWrap(false);
    obj.label6:setMargins({left=0, top=0, bottom=0, right=20});
    obj.label6:setName("label6");
    obj.label6:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");

    obj.comboBox2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.flowPart5);
    obj.comboBox2:setAlign("left");
    obj.comboBox2:setItems({'Estudante', 'Gennin', 'Chunnin', 'Jounnin', 'ANBU', 'Sannin', 'Kage'});
    obj.comboBox2:setFontSize(18);
    obj.comboBox2:setName("comboBox2");

    obj.flowPart6 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart6:setParent(obj.flowLayout2);
    obj.flowPart6:setMaxWidth(768.0);
    obj.flowPart6:setHeight(508);
    obj.flowPart6:setName("flowPart6");
    obj.flowPart6:setMargins({left=5, right=5, top=5, bottom=5});

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.flowPart6);
    obj.label7:setAlign("top");
    obj.label7:setText("Personalidade");
    obj.label7:setFontSize(32);
    obj.label7:setAutoSize(true);
    obj.label7:setWordWrap(false);
    obj.label7:setName("label7");
    obj.label7:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.flowPart6);
    obj.richEdit1:setWidth(765);
    obj.richEdit1:setHeight(120);
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "grey");
    obj.richEdit1:setTop(40);
    obj.richEdit1:setName("richEdit1");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("status");
    obj.tab2:setName("tab2");

    obj.frmStatus = GUI.fromHandle(_obj_newObject("form"));
    obj.frmStatus:setParent(obj.tab2);
    obj.frmStatus:setName("frmStatus");
    obj.frmStatus:setFormType("sheetTemplate");
    obj.frmStatus:setDataType("DATA_TYPE_AQUI");
    obj.frmStatus:setTitle("Naruto No Atarashi Ninja Paradise");
    obj.frmStatus:setAlign("client");

    obj.flowLayout3 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout3:setParent(obj.frmStatus);
    obj.flowLayout3:setAlign("client");
    obj.flowLayout3:setMargins({left=20, top=20, bottom=20, right=20});
    obj.flowLayout3:setMaxControlsPerLine(1);
    obj.flowLayout3:setName("flowLayout3");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.flowLayout3);
    obj.label8:setAlign("left");
    obj.label8:setText("Status de Personagem");
    obj.label8:setAutoSize(true);
    obj.label8:setWordWrap(false);
    obj.label8:setFontSize(48);
    obj.label8:setName("label8");
    obj.label8:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");

    obj.flowPart7 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart7:setParent(obj.flowLayout3);
    obj.flowPart7:setHeight(36);
    obj.flowPart7:setMaxWidth(1024.0);
    obj.flowPart7:setName("flowPart7");
    obj.flowPart7:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.flowPart7);
    obj.image3:setAlign("left");
    obj.image3:setWidth(32);
    obj.image3:setHeight(32);
    obj.image3:setSRC("https://cdn-icons-png.flaticon.com/512/3548/3548916.png");
    obj.image3:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image3:setName("image3");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.flowPart7);
    obj.label9:setFontSize(32);
    obj.label9:setAutoSize(true);
    obj.label9:setWordWrap(false);
    obj.label9:setAlign("left");
    obj.label9:setText("Luta Marcial");
    obj.label9:setName("label9");
    obj.label9:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");

    obj.comboBox3 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox3:setParent(obj.flowPart7);
    obj.comboBox3:setAlign("left");
    obj.comboBox3:setItems({1, 2, 3, 4, 5});
    obj.comboBox3:setValue("1");
    obj.comboBox3:setFontSize(16);
    obj.comboBox3:setMargins({left=10, top=0, bottom=0, right=10});
    obj.comboBox3:setWidth(64);
    obj.comboBox3:setField("nivelLutaMarcial");
    obj.comboBox3:setName("comboBox3");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.flowPart7);
    obj.edit4:setAlign("left");
    obj.edit4:setType("number");
    obj.edit4:setFontSize(16);
    obj.edit4:setWidth(64);
    obj.edit4:setField("pontosLutaMarcial");
    obj.edit4:setName("edit4");
    obj.edit4:setFontFamily("MADE TOMMY");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.flowPart7);
    obj.edit5:setAlign("left");
    obj.edit5:setReadOnly(true);
    obj.edit5:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit5:setFontSize(16);
    obj.edit5:setWidth(64);
    obj.edit5:setField("pontosLutaMarcialBonusPassivo");
    obj.edit5:setName("edit5");
    obj.edit5:setFontFamily("MADE TOMMY");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.flowPart7);
    obj.label10:setText("Xp");
    obj.label10:setAlign("left");
    obj.label10:setAutoSize(true);
    obj.label10:setWordWrap(false);
    obj.label10:setFontSize(32);
    obj.label10:setName("label10");
    obj.label10:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.flowPart7);
    obj.edit6:setAlign("left");
    obj.edit6:setType("number");
    obj.edit6:setFontSize(16);
    obj.edit6:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit6:setWidth(64);
    obj.edit6:setField("xpAtualLutaMarcial");
    obj.edit6:setName("edit6");
    obj.edit6:setFontFamily("MADE TOMMY");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.flowPart7);
    obj.edit7:setAlign("left");
    obj.edit7:setReadOnly(true);
    obj.edit7:setFontSize(16);
    obj.edit7:setWidth(64);
    obj.edit7:setField("xpNecessarioLutaMarcial");
    obj.edit7:setName("edit7");
    obj.edit7:setFontFamily("MADE TOMMY");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.flowPart7);
    obj.label11:setText("Total");
    obj.label11:setAlign("left");
    obj.label11:setAutoSize(true);
    obj.label11:setWordWrap(false);
    obj.label11:setFontSize(32);
    obj.label11:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label11:setName("label11");
    obj.label11:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.flowPart7);
    obj.edit8:setAlign("left");
    obj.edit8:setReadOnly(true);
    obj.edit8:setFontSize(16);
    obj.edit8:setWidth(64);
    obj.edit8:setField("totalLutaMarcial");
    obj.edit8:setName("edit8");
    obj.edit8:setFontFamily("MADE TOMMY");

    obj.flowPart8 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart8:setParent(obj.flowLayout3);
    obj.flowPart8:setHeight(36);
    obj.flowPart8:setMaxWidth(1024.0);
    obj.flowPart8:setName("flowPart8");
    obj.flowPart8:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.flowPart8);
    obj.image4:setAlign("left");
    obj.image4:setWidth(32);
    obj.image4:setHeight(32);
    obj.image4:setSRC("https://cdn-icons-png.flaticon.com/512/3549/3549861.png");
    obj.image4:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image4:setName("image4");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.flowPart8);
    obj.label12:setFontSize(32);
    obj.label12:setAutoSize(true);
    obj.label12:setWordWrap(false);
    obj.label12:setAlign("left");
    obj.label12:setText("Luta Belica");
    obj.label12:setName("label12");
    obj.label12:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");

    obj.comboBox4 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox4:setParent(obj.flowPart8);
    obj.comboBox4:setAlign("left");
    obj.comboBox4:setItems({1, 2, 3, 4, 5});
    obj.comboBox4:setValue("1");
    obj.comboBox4:setFontSize(16);
    obj.comboBox4:setMargins({left=32, top=0, bottom=0, right=10});
    obj.comboBox4:setWidth(64);
    obj.comboBox4:setField("nivelLutaBelica");
    obj.comboBox4:setName("comboBox4");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.flowPart8);
    obj.edit9:setAlign("left");
    obj.edit9:setType("number");
    obj.edit9:setFontSize(16);
    obj.edit9:setWidth(64);
    obj.edit9:setField("pontosLutaBelica");
    obj.edit9:setName("edit9");
    obj.edit9:setFontFamily("MADE TOMMY");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.flowPart8);
    obj.edit10:setAlign("left");
    obj.edit10:setReadOnly(true);
    obj.edit10:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit10:setFontSize(16);
    obj.edit10:setWidth(64);
    obj.edit10:setField("pontosLutaBelicaBonusPassivo");
    obj.edit10:setName("edit10");
    obj.edit10:setFontFamily("MADE TOMMY");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.flowPart8);
    obj.label13:setText("Xp");
    obj.label13:setAlign("left");
    obj.label13:setAutoSize(true);
    obj.label13:setWordWrap(false);
    obj.label13:setFontSize(32);
    obj.label13:setName("label13");
    obj.label13:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.flowPart8);
    obj.edit11:setAlign("left");
    obj.edit11:setType("number");
    obj.edit11:setFontSize(16);
    obj.edit11:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit11:setWidth(64);
    obj.edit11:setField("xpAtualLutaBelica");
    obj.edit11:setName("edit11");
    obj.edit11:setFontFamily("MADE TOMMY");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.flowPart8);
    obj.edit12:setAlign("left");
    obj.edit12:setReadOnly(true);
    obj.edit12:setFontSize(16);
    obj.edit12:setWidth(64);
    obj.edit12:setField("xpNecessarioLutaBelica");
    obj.edit12:setName("edit12");
    obj.edit12:setFontFamily("MADE TOMMY");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.flowPart8);
    obj.label14:setText("Total");
    obj.label14:setAlign("left");
    obj.label14:setAutoSize(true);
    obj.label14:setWordWrap(false);
    obj.label14:setFontSize(32);
    obj.label14:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label14:setName("label14");
    obj.label14:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.flowPart8);
    obj.edit13:setAlign("left");
    obj.edit13:setReadOnly(true);
    obj.edit13:setFontSize(16);
    obj.edit13:setWidth(64);
    obj.edit13:setField("totalLutaBelica");
    obj.edit13:setName("edit13");
    obj.edit13:setFontFamily("MADE TOMMY");

    obj.flowPart9 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart9:setParent(obj.flowLayout3);
    obj.flowPart9:setHeight(36);
    obj.flowPart9:setMaxWidth(1024.0);
    obj.flowPart9:setName("flowPart9");
    obj.flowPart9:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.flowPart9);
    obj.image5:setAlign("left");
    obj.image5:setWidth(32);
    obj.image5:setHeight(32);
    obj.image5:setSRC("https://cdn-icons-png.flaticon.com/512/3548/3548868.png");
    obj.image5:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image5:setName("image5");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.flowPart9);
    obj.label15:setFontSize(32);
    obj.label15:setAutoSize(true);
    obj.label15:setWordWrap(false);
    obj.label15:setAlign("left");
    obj.label15:setText("Agilidade");
    obj.label15:setName("label15");
    obj.label15:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");

    obj.comboBox5 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox5:setParent(obj.flowPart9);
    obj.comboBox5:setAlign("left");
    obj.comboBox5:setItems({1, 2, 3, 4, 5});
    obj.comboBox5:setValue("1");
    obj.comboBox5:setFontSize(16);
    obj.comboBox5:setMargins({left=58, top=0, bottom=0, right=10});
    obj.comboBox5:setWidth(64);
    obj.comboBox5:setField("nivelAgilidade");
    obj.comboBox5:setName("comboBox5");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.flowPart9);
    obj.edit14:setAlign("left");
    obj.edit14:setType("number");
    obj.edit14:setFontSize(16);
    obj.edit14:setWidth(64);
    obj.edit14:setField("pontosAgilidade");
    obj.edit14:setName("edit14");
    obj.edit14:setFontFamily("MADE TOMMY");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.flowPart9);
    obj.edit15:setAlign("left");
    obj.edit15:setReadOnly(true);
    obj.edit15:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit15:setFontSize(16);
    obj.edit15:setWidth(64);
    obj.edit15:setField("pontosAgilidadeBonusPassivo");
    obj.edit15:setName("edit15");
    obj.edit15:setFontFamily("MADE TOMMY");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.flowPart9);
    obj.label16:setText("Xp");
    obj.label16:setAlign("left");
    obj.label16:setAutoSize(true);
    obj.label16:setWordWrap(false);
    obj.label16:setFontSize(32);
    obj.label16:setName("label16");
    obj.label16:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.flowPart9);
    obj.edit16:setAlign("left");
    obj.edit16:setType("number");
    obj.edit16:setFontSize(16);
    obj.edit16:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit16:setWidth(64);
    obj.edit16:setField("xpAtualAgilidade");
    obj.edit16:setName("edit16");
    obj.edit16:setFontFamily("MADE TOMMY");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.flowPart9);
    obj.edit17:setAlign("left");
    obj.edit17:setReadOnly(true);
    obj.edit17:setFontSize(16);
    obj.edit17:setWidth(64);
    obj.edit17:setField("xpNecessarioAgilidade");
    obj.edit17:setName("edit17");
    obj.edit17:setFontFamily("MADE TOMMY");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.flowPart9);
    obj.label17:setText("Total");
    obj.label17:setAlign("left");
    obj.label17:setAutoSize(true);
    obj.label17:setWordWrap(false);
    obj.label17:setFontSize(32);
    obj.label17:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label17:setName("label17");
    obj.label17:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.flowPart9);
    obj.edit18:setAlign("left");
    obj.edit18:setReadOnly(true);
    obj.edit18:setFontSize(16);
    obj.edit18:setWidth(64);
    obj.edit18:setField("totalAgilidade");
    obj.edit18:setName("edit18");
    obj.edit18:setFontFamily("MADE TOMMY");

    obj.flowPart10 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart10:setParent(obj.flowLayout3);
    obj.flowPart10:setHeight(36);
    obj.flowPart10:setMaxWidth(1024.0);
    obj.flowPart10:setName("flowPart10");
    obj.flowPart10:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.flowPart10);
    obj.image6:setAlign("left");
    obj.image6:setWidth(32);
    obj.image6:setHeight(32);
    obj.image6:setSRC("https://cdn-icons-png.flaticon.com/128/3548/3548975.png");
    obj.image6:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image6:setName("image6");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.flowPart10);
    obj.label18:setFontSize(32);
    obj.label18:setAutoSize(true);
    obj.label18:setWordWrap(false);
    obj.label18:setAlign("left");
    obj.label18:setText("Percepção");
    obj.label18:setName("label18");
    obj.label18:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");

    obj.comboBox6 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox6:setParent(obj.flowPart10);
    obj.comboBox6:setAlign("left");
    obj.comboBox6:setItems({1, 2, 3, 4, 5});
    obj.comboBox6:setValue("1");
    obj.comboBox6:setFontSize(16);
    obj.comboBox6:setMargins({left=50, top=0, bottom=0, right=10});
    obj.comboBox6:setWidth(64);
    obj.comboBox6:setField("nivelPercepcao");
    obj.comboBox6:setName("comboBox6");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.flowPart10);
    obj.edit19:setAlign("left");
    obj.edit19:setType("number");
    obj.edit19:setFontSize(16);
    obj.edit19:setWidth(64);
    obj.edit19:setField("pontosPercepcao");
    obj.edit19:setName("edit19");
    obj.edit19:setFontFamily("MADE TOMMY");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.flowPart10);
    obj.edit20:setAlign("left");
    obj.edit20:setReadOnly(true);
    obj.edit20:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit20:setFontSize(16);
    obj.edit20:setWidth(64);
    obj.edit20:setField("pontosPercepcaoBonusPassivo");
    obj.edit20:setName("edit20");
    obj.edit20:setFontFamily("MADE TOMMY");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.flowPart10);
    obj.label19:setText("Xp");
    obj.label19:setAlign("left");
    obj.label19:setAutoSize(true);
    obj.label19:setWordWrap(false);
    obj.label19:setFontSize(32);
    obj.label19:setName("label19");
    obj.label19:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.flowPart10);
    obj.edit21:setAlign("left");
    obj.edit21:setType("number");
    obj.edit21:setFontSize(16);
    obj.edit21:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit21:setWidth(64);
    obj.edit21:setField("xpAtualPercepcao");
    obj.edit21:setName("edit21");
    obj.edit21:setFontFamily("MADE TOMMY");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.flowPart10);
    obj.edit22:setAlign("left");
    obj.edit22:setReadOnly(true);
    obj.edit22:setFontSize(16);
    obj.edit22:setWidth(64);
    obj.edit22:setField("xpNecessarioPercepcao");
    obj.edit22:setName("edit22");
    obj.edit22:setFontFamily("MADE TOMMY");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.flowPart10);
    obj.label20:setText("Total");
    obj.label20:setAlign("left");
    obj.label20:setAutoSize(true);
    obj.label20:setWordWrap(false);
    obj.label20:setFontSize(32);
    obj.label20:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label20:setName("label20");
    obj.label20:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label20, "fontStyle",  "bold");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.flowPart10);
    obj.edit23:setAlign("left");
    obj.edit23:setReadOnly(true);
    obj.edit23:setFontSize(16);
    obj.edit23:setWidth(64);
    obj.edit23:setField("totalPercepcao");
    obj.edit23:setName("edit23");
    obj.edit23:setFontFamily("MADE TOMMY");

    obj.flowPart11 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart11:setParent(obj.flowLayout3);
    obj.flowPart11:setHeight(36);
    obj.flowPart11:setMaxWidth(1024.0);
    obj.flowPart11:setName("flowPart11");
    obj.flowPart11:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.flowPart11);
    obj.image7:setAlign("left");
    obj.image7:setWidth(32);
    obj.image7:setHeight(32);
    obj.image7:setSRC("https://cdn-icons-png.flaticon.com/512/3549/3549871.png");
    obj.image7:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image7:setName("image7");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.flowPart11);
    obj.label21:setFontSize(32);
    obj.label21:setAutoSize(true);
    obj.label21:setWordWrap(false);
    obj.label21:setAlign("left");
    obj.label21:setText("Resistencia");
    obj.label21:setName("label21");
    obj.label21:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label21, "fontStyle",  "bold");

    obj.comboBox7 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox7:setParent(obj.flowPart11);
    obj.comboBox7:setAlign("left");
    obj.comboBox7:setItems({1, 2, 3, 4, 5});
    obj.comboBox7:setValue("1");
    obj.comboBox7:setFontSize(16);
    obj.comboBox7:setMargins({left=40, top=0, bottom=0, right=10});
    obj.comboBox7:setWidth(64);
    obj.comboBox7:setField("nivelResistencia");
    obj.comboBox7:setName("comboBox7");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.flowPart11);
    obj.edit24:setAlign("left");
    obj.edit24:setType("number");
    obj.edit24:setFontSize(16);
    obj.edit24:setWidth(64);
    obj.edit24:setField("pontosResistencia");
    obj.edit24:setName("edit24");
    obj.edit24:setFontFamily("MADE TOMMY");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.flowPart11);
    obj.edit25:setAlign("left");
    obj.edit25:setReadOnly(true);
    obj.edit25:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit25:setFontSize(16);
    obj.edit25:setWidth(64);
    obj.edit25:setField("pontosResistenciaBonusPassivo");
    obj.edit25:setName("edit25");
    obj.edit25:setFontFamily("MADE TOMMY");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.flowPart11);
    obj.label22:setText("Xp");
    obj.label22:setAlign("left");
    obj.label22:setAutoSize(true);
    obj.label22:setWordWrap(false);
    obj.label22:setFontSize(32);
    obj.label22:setName("label22");
    obj.label22:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label22, "fontStyle",  "bold");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.flowPart11);
    obj.edit26:setAlign("left");
    obj.edit26:setType("number");
    obj.edit26:setFontSize(16);
    obj.edit26:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit26:setWidth(64);
    obj.edit26:setField("xpAtualResistencia");
    obj.edit26:setName("edit26");
    obj.edit26:setFontFamily("MADE TOMMY");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.flowPart11);
    obj.edit27:setAlign("left");
    obj.edit27:setReadOnly(true);
    obj.edit27:setFontSize(16);
    obj.edit27:setWidth(64);
    obj.edit27:setField("xpNecessarioResistencia");
    obj.edit27:setName("edit27");
    obj.edit27:setFontFamily("MADE TOMMY");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.flowPart11);
    obj.label23:setText("Total");
    obj.label23:setAlign("left");
    obj.label23:setAutoSize(true);
    obj.label23:setWordWrap(false);
    obj.label23:setFontSize(32);
    obj.label23:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label23:setName("label23");
    obj.label23:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label23, "fontStyle",  "bold");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.flowPart11);
    obj.edit28:setAlign("left");
    obj.edit28:setReadOnly(true);
    obj.edit28:setFontSize(16);
    obj.edit28:setWidth(64);
    obj.edit28:setField("totalResistencia");
    obj.edit28:setName("edit28");
    obj.edit28:setFontFamily("MADE TOMMY");

    obj.flowPart12 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart12:setParent(obj.flowLayout3);
    obj.flowPart12:setHeight(36);
    obj.flowPart12:setMaxWidth(1024.0);
    obj.flowPart12:setName("flowPart12");
    obj.flowPart12:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.flowPart12);
    obj.image8:setAlign("left");
    obj.image8:setWidth(32);
    obj.image8:setHeight(32);
    obj.image8:setSRC("https://cdn-icons-png.flaticon.com/512/3548/3548950.png");
    obj.image8:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image8:setName("image8");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.flowPart12);
    obj.label24:setFontSize(32);
    obj.label24:setAutoSize(true);
    obj.label24:setWordWrap(false);
    obj.label24:setAlign("left");
    obj.label24:setText("Defesa");
    obj.label24:setName("label24");
    obj.label24:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label24, "fontStyle",  "bold");

    obj.comboBox8 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox8:setParent(obj.flowPart12);
    obj.comboBox8:setAlign("left");
    obj.comboBox8:setItems({1, 2, 3, 4, 5});
    obj.comboBox8:setValue("1");
    obj.comboBox8:setFontSize(16);
    obj.comboBox8:setMargins({left=99, top=0, bottom=0, right=10});
    obj.comboBox8:setWidth(64);
    obj.comboBox8:setField("nivelDefesa");
    obj.comboBox8:setName("comboBox8");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.flowPart12);
    obj.edit29:setAlign("left");
    obj.edit29:setType("number");
    obj.edit29:setFontSize(16);
    obj.edit29:setWidth(64);
    obj.edit29:setField("pontosDefesa");
    obj.edit29:setName("edit29");
    obj.edit29:setFontFamily("MADE TOMMY");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.flowPart12);
    obj.edit30:setAlign("left");
    obj.edit30:setReadOnly(true);
    obj.edit30:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit30:setFontSize(16);
    obj.edit30:setWidth(64);
    obj.edit30:setField("pontosDefesaBonusPassivo");
    obj.edit30:setName("edit30");
    obj.edit30:setFontFamily("MADE TOMMY");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.flowPart12);
    obj.label25:setText("Xp");
    obj.label25:setAlign("left");
    obj.label25:setAutoSize(true);
    obj.label25:setWordWrap(false);
    obj.label25:setFontSize(32);
    obj.label25:setName("label25");
    obj.label25:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label25, "fontStyle",  "bold");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.flowPart12);
    obj.edit31:setAlign("left");
    obj.edit31:setType("number");
    obj.edit31:setFontSize(16);
    obj.edit31:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit31:setWidth(64);
    obj.edit31:setField("xpAtualDefesa");
    obj.edit31:setName("edit31");
    obj.edit31:setFontFamily("MADE TOMMY");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.flowPart12);
    obj.edit32:setAlign("left");
    obj.edit32:setReadOnly(true);
    obj.edit32:setFontSize(16);
    obj.edit32:setWidth(64);
    obj.edit32:setField("xpNecessarioDefesa");
    obj.edit32:setName("edit32");
    obj.edit32:setFontFamily("MADE TOMMY");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.flowPart12);
    obj.label26:setText("Total");
    obj.label26:setAlign("left");
    obj.label26:setAutoSize(true);
    obj.label26:setWordWrap(false);
    obj.label26:setFontSize(32);
    obj.label26:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label26:setName("label26");
    obj.label26:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label26, "fontStyle",  "bold");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.flowPart12);
    obj.edit33:setAlign("left");
    obj.edit33:setReadOnly(true);
    obj.edit33:setFontSize(16);
    obj.edit33:setWidth(64);
    obj.edit33:setField("totalDefesa");
    obj.edit33:setName("edit33");
    obj.edit33:setFontFamily("MADE TOMMY");

    obj.flowPart13 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart13:setParent(obj.flowLayout3);
    obj.flowPart13:setHeight(36);
    obj.flowPart13:setMaxWidth(1024.0);
    obj.flowPart13:setName("flowPart13");
    obj.flowPart13:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.flowPart13);
    obj.image9:setAlign("left");
    obj.image9:setWidth(32);
    obj.image9:setHeight(32);
    obj.image9:setSRC("https://cdn-icons-png.flaticon.com/512/3549/3549905.png");
    obj.image9:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image9:setName("image9");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.flowPart13);
    obj.label27:setFontSize(32);
    obj.label27:setAutoSize(true);
    obj.label27:setWordWrap(false);
    obj.label27:setAlign("left");
    obj.label27:setText("Destreza");
    obj.label27:setName("label27");
    obj.label27:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label27, "fontStyle",  "bold");

    obj.comboBox9 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox9:setParent(obj.flowPart13);
    obj.comboBox9:setAlign("left");
    obj.comboBox9:setItems({1, 2, 3, 4, 5});
    obj.comboBox9:setValue("1");
    obj.comboBox9:setFontSize(16);
    obj.comboBox9:setMargins({left=71, top=0, bottom=0, right=10});
    obj.comboBox9:setWidth(64);
    obj.comboBox9:setField("nivelDestreza");
    obj.comboBox9:setName("comboBox9");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.flowPart13);
    obj.edit34:setAlign("left");
    obj.edit34:setType("number");
    obj.edit34:setFontSize(16);
    obj.edit34:setWidth(64);
    obj.edit34:setField("pontosDestreza");
    obj.edit34:setName("edit34");
    obj.edit34:setFontFamily("MADE TOMMY");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.flowPart13);
    obj.edit35:setAlign("left");
    obj.edit35:setReadOnly(true);
    obj.edit35:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit35:setFontSize(16);
    obj.edit35:setWidth(64);
    obj.edit35:setField("pontosDestrezaBonusPassivo");
    obj.edit35:setName("edit35");
    obj.edit35:setFontFamily("MADE TOMMY");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.flowPart13);
    obj.label28:setText("Xp");
    obj.label28:setAlign("left");
    obj.label28:setAutoSize(true);
    obj.label28:setWordWrap(false);
    obj.label28:setFontSize(32);
    obj.label28:setName("label28");
    obj.label28:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label28, "fontStyle",  "bold");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.flowPart13);
    obj.edit36:setAlign("left");
    obj.edit36:setType("number");
    obj.edit36:setFontSize(16);
    obj.edit36:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit36:setWidth(64);
    obj.edit36:setField("xpAtualDestreza");
    obj.edit36:setName("edit36");
    obj.edit36:setFontFamily("MADE TOMMY");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.flowPart13);
    obj.edit37:setAlign("left");
    obj.edit37:setReadOnly(true);
    obj.edit37:setFontSize(16);
    obj.edit37:setWidth(64);
    obj.edit37:setField("xpNecessarioDestreza");
    obj.edit37:setName("edit37");
    obj.edit37:setFontFamily("MADE TOMMY");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.flowPart13);
    obj.label29:setText("Total");
    obj.label29:setAlign("left");
    obj.label29:setAutoSize(true);
    obj.label29:setWordWrap(false);
    obj.label29:setFontSize(32);
    obj.label29:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label29:setName("label29");
    obj.label29:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label29, "fontStyle",  "bold");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.flowPart13);
    obj.edit38:setAlign("left");
    obj.edit38:setReadOnly(true);
    obj.edit38:setFontSize(16);
    obj.edit38:setWidth(64);
    obj.edit38:setField("totalDestreza");
    obj.edit38:setName("edit38");
    obj.edit38:setFontFamily("MADE TOMMY");

    obj.flowPart14 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart14:setParent(obj.flowLayout3);
    obj.flowPart14:setHeight(36);
    obj.flowPart14:setMaxWidth(1024.0);
    obj.flowPart14:setName("flowPart14");
    obj.flowPart14:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.flowPart14);
    obj.image10:setAlign("left");
    obj.image10:setWidth(32);
    obj.image10:setHeight(32);
    obj.image10:setSRC("https://cdn-icons-png.flaticon.com/512/3548/3548932.png");
    obj.image10:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image10:setName("image10");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.flowPart14);
    obj.label30:setFontSize(32);
    obj.label30:setAutoSize(true);
    obj.label30:setWordWrap(false);
    obj.label30:setAlign("left");
    obj.label30:setText("Controle");
    obj.label30:setName("label30");
    obj.label30:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label30, "fontStyle",  "bold");

    obj.comboBox10 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox10:setParent(obj.flowPart14);
    obj.comboBox10:setAlign("left");
    obj.comboBox10:setItems({1, 2, 3, 4, 5});
    obj.comboBox10:setValue("1");
    obj.comboBox10:setFontSize(16);
    obj.comboBox10:setMargins({left=76, top=0, bottom=0, right=10});
    obj.comboBox10:setWidth(64);
    obj.comboBox10:setField("nivelControle");
    obj.comboBox10:setName("comboBox10");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.flowPart14);
    obj.edit39:setAlign("left");
    obj.edit39:setType("number");
    obj.edit39:setFontSize(16);
    obj.edit39:setWidth(64);
    obj.edit39:setField("pontosControle");
    obj.edit39:setName("edit39");
    obj.edit39:setFontFamily("MADE TOMMY");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.flowPart14);
    obj.edit40:setAlign("left");
    obj.edit40:setReadOnly(true);
    obj.edit40:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit40:setFontSize(16);
    obj.edit40:setWidth(64);
    obj.edit40:setField("pontosControleBonusPassivo");
    obj.edit40:setName("edit40");
    obj.edit40:setFontFamily("MADE TOMMY");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.flowPart14);
    obj.label31:setText("Xp");
    obj.label31:setAlign("left");
    obj.label31:setAutoSize(true);
    obj.label31:setWordWrap(false);
    obj.label31:setFontSize(32);
    obj.label31:setName("label31");
    obj.label31:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label31, "fontStyle",  "bold");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.flowPart14);
    obj.edit41:setAlign("left");
    obj.edit41:setType("number");
    obj.edit41:setFontSize(16);
    obj.edit41:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit41:setWidth(64);
    obj.edit41:setField("xpAtualControle");
    obj.edit41:setName("edit41");
    obj.edit41:setFontFamily("MADE TOMMY");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.flowPart14);
    obj.edit42:setAlign("left");
    obj.edit42:setReadOnly(true);
    obj.edit42:setFontSize(16);
    obj.edit42:setWidth(64);
    obj.edit42:setField("xpNecessarioControle");
    obj.edit42:setName("edit42");
    obj.edit42:setFontFamily("MADE TOMMY");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.flowPart14);
    obj.label32:setText("Total");
    obj.label32:setAlign("left");
    obj.label32:setAutoSize(true);
    obj.label32:setWordWrap(false);
    obj.label32:setFontSize(32);
    obj.label32:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label32:setName("label32");
    obj.label32:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label32, "fontStyle",  "bold");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.flowPart14);
    obj.edit43:setAlign("left");
    obj.edit43:setReadOnly(true);
    obj.edit43:setFontSize(16);
    obj.edit43:setWidth(64);
    obj.edit43:setField("totalControle");
    obj.edit43:setName("edit43");
    obj.edit43:setFontFamily("MADE TOMMY");

    obj.flowPart15 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart15:setParent(obj.flowLayout3);
    obj.flowPart15:setHeight(36);
    obj.flowPart15:setMaxWidth(1024.0);
    obj.flowPart15:setName("flowPart15");
    obj.flowPart15:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image11 = GUI.fromHandle(_obj_newObject("image"));
    obj.image11:setParent(obj.flowPart15);
    obj.image11:setAlign("left");
    obj.image11:setWidth(32);
    obj.image11:setHeight(32);
    obj.image11:setSRC("https://cdn-icons-png.flaticon.com/512/3548/3548899.png");
    obj.image11:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image11:setName("image11");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.flowPart15);
    obj.label33:setFontSize(32);
    obj.label33:setAutoSize(true);
    obj.label33:setWordWrap(false);
    obj.label33:setAlign("left");
    obj.label33:setText("Mental");
    obj.label33:setName("label33");
    obj.label33:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label33, "fontStyle",  "bold");

    obj.comboBox11 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox11:setParent(obj.flowPart15);
    obj.comboBox11:setAlign("left");
    obj.comboBox11:setItems({1, 2, 3, 4, 5});
    obj.comboBox11:setValue("1");
    obj.comboBox11:setFontSize(16);
    obj.comboBox11:setMargins({left=96, top=0, bottom=0, right=10});
    obj.comboBox11:setWidth(64);
    obj.comboBox11:setField("nivelMental");
    obj.comboBox11:setName("comboBox11");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.flowPart15);
    obj.edit44:setAlign("left");
    obj.edit44:setType("number");
    obj.edit44:setFontSize(16);
    obj.edit44:setWidth(64);
    obj.edit44:setField("pontosMental");
    obj.edit44:setName("edit44");
    obj.edit44:setFontFamily("MADE TOMMY");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.flowPart15);
    obj.edit45:setAlign("left");
    obj.edit45:setReadOnly(true);
    obj.edit45:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit45:setFontSize(16);
    obj.edit45:setWidth(64);
    obj.edit45:setField("pontosMentalBonusPassivo");
    obj.edit45:setName("edit45");
    obj.edit45:setFontFamily("MADE TOMMY");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.flowPart15);
    obj.label34:setText("Xp");
    obj.label34:setAlign("left");
    obj.label34:setAutoSize(true);
    obj.label34:setWordWrap(false);
    obj.label34:setFontSize(32);
    obj.label34:setName("label34");
    obj.label34:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label34, "fontStyle",  "bold");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.flowPart15);
    obj.edit46:setAlign("left");
    obj.edit46:setType("number");
    obj.edit46:setFontSize(16);
    obj.edit46:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit46:setWidth(64);
    obj.edit46:setField("xpAtualMental");
    obj.edit46:setName("edit46");
    obj.edit46:setFontFamily("MADE TOMMY");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.flowPart15);
    obj.edit47:setAlign("left");
    obj.edit47:setReadOnly(true);
    obj.edit47:setFontSize(16);
    obj.edit47:setWidth(64);
    obj.edit47:setField("xpNecessarioMental");
    obj.edit47:setName("edit47");
    obj.edit47:setFontFamily("MADE TOMMY");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.flowPart15);
    obj.label35:setText("Total");
    obj.label35:setAlign("left");
    obj.label35:setAutoSize(true);
    obj.label35:setWordWrap(false);
    obj.label35:setFontSize(32);
    obj.label35:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label35:setName("label35");
    obj.label35:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label35, "fontStyle",  "bold");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.flowPart15);
    obj.edit48:setAlign("left");
    obj.edit48:setReadOnly(true);
    obj.edit48:setFontSize(16);
    obj.edit48:setWidth(64);
    obj.edit48:setField("totalMental");
    obj.edit48:setName("edit48");
    obj.edit48:setFontFamily("MADE TOMMY");

    obj.flowPart16 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart16:setParent(obj.flowLayout3);
    obj.flowPart16:setHeight(36);
    obj.flowPart16:setMaxWidth(1024.0);
    obj.flowPart16:setName("flowPart16");
    obj.flowPart16:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image12 = GUI.fromHandle(_obj_newObject("image"));
    obj.image12:setParent(obj.flowPart16);
    obj.image12:setAlign("left");
    obj.image12:setWidth(32);
    obj.image12:setHeight(32);
    obj.image12:setSRC("https://cdn-icons-png.flaticon.com/512/3548/3548884.png");
    obj.image12:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image12:setName("image12");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.flowPart16);
    obj.label36:setFontSize(32);
    obj.label36:setAutoSize(true);
    obj.label36:setWordWrap(false);
    obj.label36:setAlign("left");
    obj.label36:setText("Balanço");
    obj.label36:setName("label36");
    obj.label36:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label36, "fontStyle",  "bold");

    obj.comboBox12 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox12:setParent(obj.flowPart16);
    obj.comboBox12:setAlign("left");
    obj.comboBox12:setItems({1, 2, 3, 4, 5});
    obj.comboBox12:setValue("1");
    obj.comboBox12:setFontSize(16);
    obj.comboBox12:setMargins({left=88, top=0, bottom=0, right=10});
    obj.comboBox12:setWidth(64);
    obj.comboBox12:setField("nivelBalanco");
    obj.comboBox12:setName("comboBox12");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.flowPart16);
    obj.edit49:setAlign("left");
    obj.edit49:setType("number");
    obj.edit49:setFontSize(16);
    obj.edit49:setWidth(64);
    obj.edit49:setField("pontosBalanco");
    obj.edit49:setName("edit49");
    obj.edit49:setFontFamily("MADE TOMMY");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.flowPart16);
    obj.edit50:setAlign("left");
    obj.edit50:setReadOnly(true);
    obj.edit50:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit50:setFontSize(16);
    obj.edit50:setWidth(64);
    obj.edit50:setField("pontosBalancoBonusPassivo");
    obj.edit50:setName("edit50");
    obj.edit50:setFontFamily("MADE TOMMY");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.flowPart16);
    obj.label37:setText("Xp");
    obj.label37:setAlign("left");
    obj.label37:setAutoSize(true);
    obj.label37:setWordWrap(false);
    obj.label37:setFontSize(32);
    obj.label37:setName("label37");
    obj.label37:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label37, "fontStyle",  "bold");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.flowPart16);
    obj.edit51:setAlign("left");
    obj.edit51:setType("number");
    obj.edit51:setFontSize(16);
    obj.edit51:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit51:setWidth(64);
    obj.edit51:setField("xpAtualBalanco");
    obj.edit51:setName("edit51");
    obj.edit51:setFontFamily("MADE TOMMY");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.flowPart16);
    obj.edit52:setAlign("left");
    obj.edit52:setReadOnly(true);
    obj.edit52:setFontSize(16);
    obj.edit52:setWidth(64);
    obj.edit52:setField("xpNecessarioBalanco");
    obj.edit52:setName("edit52");
    obj.edit52:setFontFamily("MADE TOMMY");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.flowPart16);
    obj.label38:setText("Total");
    obj.label38:setAlign("left");
    obj.label38:setAutoSize(true);
    obj.label38:setWordWrap(false);
    obj.label38:setFontSize(32);
    obj.label38:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label38:setName("label38");
    obj.label38:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label38, "fontStyle",  "bold");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.flowPart16);
    obj.edit53:setAlign("left");
    obj.edit53:setReadOnly(true);
    obj.edit53:setFontSize(16);
    obj.edit53:setWidth(64);
    obj.edit53:setField("totalBalanco");
    obj.edit53:setName("edit53");
    obj.edit53:setFontFamily("MADE TOMMY");

    obj.flowPart17 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart17:setParent(obj.flowLayout3);
    obj.flowPart17:setHeight(36);
    obj.flowPart17:setMaxWidth(1024.0);
    obj.flowPart17:setName("flowPart17");
    obj.flowPart17:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image13 = GUI.fromHandle(_obj_newObject("image"));
    obj.image13:setParent(obj.flowPart17);
    obj.image13:setAlign("left");
    obj.image13:setWidth(32);
    obj.image13:setHeight(32);
    obj.image13:setSRC("https://cdn-icons-png.flaticon.com/128/3549/3549893.png");
    obj.image13:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image13:setName("image13");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.flowPart17);
    obj.label39:setFontSize(32);
    obj.label39:setAutoSize(true);
    obj.label39:setWordWrap(false);
    obj.label39:setAlign("left");
    obj.label39:setText("Carisma");
    obj.label39:setName("label39");
    obj.label39:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label39, "fontStyle",  "bold");

    obj.comboBox13 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox13:setParent(obj.flowPart17);
    obj.comboBox13:setAlign("left");
    obj.comboBox13:setItems({1, 2, 3, 4, 5});
    obj.comboBox13:setValue("1");
    obj.comboBox13:setFontSize(16);
    obj.comboBox13:setMargins({left=88, top=0, bottom=0, right=10});
    obj.comboBox13:setWidth(64);
    obj.comboBox13:setField("nivelCarisma");
    obj.comboBox13:setName("comboBox13");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.flowPart17);
    obj.edit54:setAlign("left");
    obj.edit54:setType("number");
    obj.edit54:setFontSize(16);
    obj.edit54:setWidth(64);
    obj.edit54:setField("pontosCarisma");
    obj.edit54:setName("edit54");
    obj.edit54:setFontFamily("MADE TOMMY");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.flowPart17);
    obj.edit55:setAlign("left");
    obj.edit55:setReadOnly(true);
    obj.edit55:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit55:setFontSize(16);
    obj.edit55:setWidth(64);
    obj.edit55:setField("pontosCarismaBonusPassivo");
    obj.edit55:setName("edit55");
    obj.edit55:setFontFamily("MADE TOMMY");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.flowPart17);
    obj.label40:setText("Xp");
    obj.label40:setAlign("left");
    obj.label40:setAutoSize(true);
    obj.label40:setWordWrap(false);
    obj.label40:setFontSize(32);
    obj.label40:setName("label40");
    obj.label40:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label40, "fontStyle",  "bold");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.flowPart17);
    obj.edit56:setAlign("left");
    obj.edit56:setType("number");
    obj.edit56:setFontSize(16);
    obj.edit56:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit56:setWidth(64);
    obj.edit56:setField("xpAtualCarisma");
    obj.edit56:setName("edit56");
    obj.edit56:setFontFamily("MADE TOMMY");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.flowPart17);
    obj.edit57:setAlign("left");
    obj.edit57:setReadOnly(true);
    obj.edit57:setFontSize(16);
    obj.edit57:setWidth(64);
    obj.edit57:setField("xpNecessarioCarisma");
    obj.edit57:setName("edit57");
    obj.edit57:setFontFamily("MADE TOMMY");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.flowPart17);
    obj.label41:setText("Total");
    obj.label41:setAlign("left");
    obj.label41:setAutoSize(true);
    obj.label41:setWordWrap(false);
    obj.label41:setFontSize(32);
    obj.label41:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label41:setName("label41");
    obj.label41:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label41, "fontStyle",  "bold");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.flowPart17);
    obj.edit58:setAlign("left");
    obj.edit58:setReadOnly(true);
    obj.edit58:setFontSize(16);
    obj.edit58:setWidth(64);
    obj.edit58:setField("totalCarisma");
    obj.edit58:setName("edit58");
    obj.edit58:setFontFamily("MADE TOMMY");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local selecionado = sheet.comboBoxElemento;
            
                                        if selecionado == "Fogo" then
                                            sheet.imagemElemento = 'http://blob.firecast.com.br/blobs/TGIRASND_2834522/fogo.png'      
                                        elseif selecionado == "Ar" then
                                            sheet.imagemElemento = 'http://blob.firecast.com.br/blobs/HILRQTLW_2834525/vento.png';
                                        elseif selecionado == "Agua" then
                                            sheet.imagemElemento = 'http://blob.firecast.com.br/blobs/CVQUSJII_2834528/agua.png'
                                        elseif selecionado == "Raio" then
                                            sheet.imagemElemento = 'http://blob.firecast.com.br/blobs/DQQGAJGD_2834523/raio.png';
                                        elseif selecionado == "Terra" then
                                            sheet.imagemElemento = 'http://blob.firecast.com.br/blobs/BUASUNCU_2834524/terra.png';
                                        else 
                                            sheet.imagemElemento = '';
                                        end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.flowPart14 ~= nil then self.flowPart14:destroy(); self.flowPart14 = nil; end;
        if self.flowPart8 ~= nil then self.flowPart8:destroy(); self.flowPart8 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.flowPart10 ~= nil then self.flowPart10:destroy(); self.flowPart10 = nil; end;
        if self.frmFichaTeste1 ~= nil then self.frmFichaTeste1:destroy(); self.frmFichaTeste1 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.flowLayout3 ~= nil then self.flowLayout3:destroy(); self.flowLayout3 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.comboBox13 ~= nil then self.comboBox13:destroy(); self.comboBox13 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.flowPart7 ~= nil then self.flowPart7:destroy(); self.flowPart7 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.flowPart13 ~= nil then self.flowPart13:destroy(); self.flowPart13 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.comboBox4 ~= nil then self.comboBox4:destroy(); self.comboBox4 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.flowPart2 ~= nil then self.flowPart2:destroy(); self.flowPart2 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.comboBox6 ~= nil then self.comboBox6:destroy(); self.comboBox6 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.flowPart16 ~= nil then self.flowPart16:destroy(); self.flowPart16 = nil; end;
        if self.comboBox3 ~= nil then self.comboBox3:destroy(); self.comboBox3 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.comboBox12 ~= nil then self.comboBox12:destroy(); self.comboBox12 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.flowPart12 ~= nil then self.flowPart12:destroy(); self.flowPart12 = nil; end;
        if self.image12 ~= nil then self.image12:destroy(); self.image12 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.comboBox10 ~= nil then self.comboBox10:destroy(); self.comboBox10 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.image11 ~= nil then self.image11:destroy(); self.image11 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.flowPart4 ~= nil then self.flowPart4:destroy(); self.flowPart4 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.comboBox7 ~= nil then self.comboBox7:destroy(); self.comboBox7 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.comboBox11 ~= nil then self.comboBox11:destroy(); self.comboBox11 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.comboBox5 ~= nil then self.comboBox5:destroy(); self.comboBox5 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.flowPart5 ~= nil then self.flowPart5:destroy(); self.flowPart5 = nil; end;
        if self.comboBoxElemento ~= nil then self.comboBoxElemento:destroy(); self.comboBoxElemento = nil; end;
        if self.imagem_avatar ~= nil then self.imagem_avatar:destroy(); self.imagem_avatar = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.flowPart9 ~= nil then self.flowPart9:destroy(); self.flowPart9 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.flowPart11 ~= nil then self.flowPart11:destroy(); self.flowPart11 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.comboBox9 ~= nil then self.comboBox9:destroy(); self.comboBox9 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.flowPart6 ~= nil then self.flowPart6:destroy(); self.flowPart6 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.comboBox8 ~= nil then self.comboBox8:destroy(); self.comboBox8 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.flowPart17 ~= nil then self.flowPart17:destroy(); self.flowPart17 = nil; end;
        if self.frmStatus ~= nil then self.frmStatus:destroy(); self.frmStatus = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.flowPart3 ~= nil then self.flowPart3:destroy(); self.flowPart3 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.image13 ~= nil then self.image13:destroy(); self.image13 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.flowPart15 ~= nil then self.flowPart15:destroy(); self.flowPart15 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmFichaTeste()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmFichaTeste();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmFichaTeste = {
    newEditor = newfrmFichaTeste, 
    new = newfrmFichaTeste, 
    name = "frmFichaTeste", 
    dataType = "DATA_TYPE_AQUI", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Naruto No Atarashi Ninja Paradise", 
    description=""};

frmFichaTeste = _frmFichaTeste;
Firecast.registrarForm(_frmFichaTeste);
Firecast.registrarDataType(_frmFichaTeste);

return _frmFichaTeste;
