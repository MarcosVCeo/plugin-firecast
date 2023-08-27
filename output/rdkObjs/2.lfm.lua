require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmStatus()
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
    obj:setName("frmStatus");
    obj:setFormType("sheetTemplate");
    obj:setDataType("DATA_TYPE_AQUI");
    obj:setTitle("Naruto No Atarashi Ninja Paradise");
    obj:setAlign("client");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj);
    obj.flowLayout1:setAlign("client");
    obj.flowLayout1:setMargins({left=20, top=20, bottom=20, right=20});
    obj.flowLayout1:setMaxControlsPerLine(1);
    obj.flowLayout1:setName("flowLayout1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.flowLayout1);
    obj.label1:setAlign("left");
    obj.label1:setText("Status de Personagem");
    obj.label1:setAutoSize(true);
    obj.label1:setWordWrap(false);
    obj.label1:setFontSize(48);
    obj.label1:setName("label1");
    obj.label1:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");

    obj.flowPart1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout1);
    obj.flowPart1:setHeight(36);
    obj.flowPart1:setMaxWidth(1024.0);
    obj.flowPart1:setName("flowPart1");
    obj.flowPart1:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.flowPart1);
    obj.image1:setAlign("left");
    obj.image1:setWidth(32);
    obj.image1:setHeight(32);
    obj.image1:setSRC("https://cdn-icons-png.flaticon.com/512/3548/3548916.png");
    obj.image1:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image1:setName("image1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.flowPart1);
    obj.label2:setFontSize(32);
    obj.label2:setAutoSize(true);
    obj.label2:setWordWrap(false);
    obj.label2:setAlign("left");
    obj.label2:setText("Luta Marcial");
    obj.label2:setName("label2");
    obj.label2:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.flowPart1);
    obj.comboBox1:setAlign("left");
    obj.comboBox1:setItems({1, 2, 3, 4, 5});
    obj.comboBox1:setValue("1");
    obj.comboBox1:setFontSize(16);
    obj.comboBox1:setMargins({left=10, top=0, bottom=0, right=10});
    obj.comboBox1:setWidth(64);
    obj.comboBox1:setField("nivelLutaMarcial");
    obj.comboBox1:setName("comboBox1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.flowPart1);
    obj.edit1:setAlign("left");
    obj.edit1:setType("number");
    obj.edit1:setFontSize(16);
    obj.edit1:setWidth(64);
    obj.edit1:setField("pontosLutaMarcial");
    obj.edit1:setName("edit1");
    obj.edit1:setFontFamily("MADE TOMMY");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.flowPart1);
    obj.edit2:setAlign("left");
    obj.edit2:setReadOnly(true);
    obj.edit2:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit2:setFontSize(16);
    obj.edit2:setWidth(64);
    obj.edit2:setField("pontosLutaMarcialBonusPassivo");
    obj.edit2:setName("edit2");
    obj.edit2:setFontFamily("MADE TOMMY");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.flowPart1);
    obj.label3:setText("Xp");
    obj.label3:setAlign("left");
    obj.label3:setAutoSize(true);
    obj.label3:setWordWrap(false);
    obj.label3:setFontSize(32);
    obj.label3:setName("label3");
    obj.label3:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.flowPart1);
    obj.edit3:setAlign("left");
    obj.edit3:setType("number");
    obj.edit3:setFontSize(16);
    obj.edit3:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit3:setWidth(64);
    obj.edit3:setField("xpAtualLutaMarcial");
    obj.edit3:setName("edit3");
    obj.edit3:setFontFamily("MADE TOMMY");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.flowPart1);
    obj.edit4:setAlign("left");
    obj.edit4:setReadOnly(true);
    obj.edit4:setFontSize(16);
    obj.edit4:setWidth(64);
    obj.edit4:setField("xpNecessarioLutaMarcial");
    obj.edit4:setName("edit4");
    obj.edit4:setFontFamily("MADE TOMMY");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.flowPart1);
    obj.label4:setText("Total");
    obj.label4:setAlign("left");
    obj.label4:setAutoSize(true);
    obj.label4:setWordWrap(false);
    obj.label4:setFontSize(32);
    obj.label4:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label4:setName("label4");
    obj.label4:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.flowPart1);
    obj.edit5:setAlign("left");
    obj.edit5:setReadOnly(true);
    obj.edit5:setFontSize(16);
    obj.edit5:setWidth(64);
    obj.edit5:setField("totalLutaMarcial");
    obj.edit5:setName("edit5");
    obj.edit5:setFontFamily("MADE TOMMY");

    obj.flowPart2 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart2:setParent(obj.flowLayout1);
    obj.flowPart2:setHeight(36);
    obj.flowPart2:setMaxWidth(1024.0);
    obj.flowPart2:setName("flowPart2");
    obj.flowPart2:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.flowPart2);
    obj.image2:setAlign("left");
    obj.image2:setWidth(32);
    obj.image2:setHeight(32);
    obj.image2:setSRC("https://cdn-icons-png.flaticon.com/512/3549/3549861.png");
    obj.image2:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image2:setName("image2");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.flowPart2);
    obj.label5:setFontSize(32);
    obj.label5:setAutoSize(true);
    obj.label5:setWordWrap(false);
    obj.label5:setAlign("left");
    obj.label5:setText("Luta Belica");
    obj.label5:setName("label5");
    obj.label5:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");

    obj.comboBox2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.flowPart2);
    obj.comboBox2:setAlign("left");
    obj.comboBox2:setItems({1, 2, 3, 4, 5});
    obj.comboBox2:setValue("1");
    obj.comboBox2:setFontSize(16);
    obj.comboBox2:setMargins({left=32, top=0, bottom=0, right=10});
    obj.comboBox2:setWidth(64);
    obj.comboBox2:setField("nivelLutaBelica");
    obj.comboBox2:setName("comboBox2");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.flowPart2);
    obj.edit6:setAlign("left");
    obj.edit6:setType("number");
    obj.edit6:setFontSize(16);
    obj.edit6:setWidth(64);
    obj.edit6:setField("pontosLutaBelica");
    obj.edit6:setName("edit6");
    obj.edit6:setFontFamily("MADE TOMMY");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.flowPart2);
    obj.edit7:setAlign("left");
    obj.edit7:setReadOnly(true);
    obj.edit7:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit7:setFontSize(16);
    obj.edit7:setWidth(64);
    obj.edit7:setField("pontosLutaBelicaBonusPassivo");
    obj.edit7:setName("edit7");
    obj.edit7:setFontFamily("MADE TOMMY");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.flowPart2);
    obj.label6:setText("Xp");
    obj.label6:setAlign("left");
    obj.label6:setAutoSize(true);
    obj.label6:setWordWrap(false);
    obj.label6:setFontSize(32);
    obj.label6:setName("label6");
    obj.label6:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.flowPart2);
    obj.edit8:setAlign("left");
    obj.edit8:setType("number");
    obj.edit8:setFontSize(16);
    obj.edit8:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit8:setWidth(64);
    obj.edit8:setField("xpAtualLutaBelica");
    obj.edit8:setName("edit8");
    obj.edit8:setFontFamily("MADE TOMMY");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.flowPart2);
    obj.edit9:setAlign("left");
    obj.edit9:setReadOnly(true);
    obj.edit9:setFontSize(16);
    obj.edit9:setWidth(64);
    obj.edit9:setField("xpNecessarioLutaBelica");
    obj.edit9:setName("edit9");
    obj.edit9:setFontFamily("MADE TOMMY");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.flowPart2);
    obj.label7:setText("Total");
    obj.label7:setAlign("left");
    obj.label7:setAutoSize(true);
    obj.label7:setWordWrap(false);
    obj.label7:setFontSize(32);
    obj.label7:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label7:setName("label7");
    obj.label7:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.flowPart2);
    obj.edit10:setAlign("left");
    obj.edit10:setReadOnly(true);
    obj.edit10:setFontSize(16);
    obj.edit10:setWidth(64);
    obj.edit10:setField("totalLutaBelica");
    obj.edit10:setName("edit10");
    obj.edit10:setFontFamily("MADE TOMMY");

    obj.flowPart3 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart3:setParent(obj.flowLayout1);
    obj.flowPart3:setHeight(36);
    obj.flowPart3:setMaxWidth(1024.0);
    obj.flowPart3:setName("flowPart3");
    obj.flowPart3:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.flowPart3);
    obj.image3:setAlign("left");
    obj.image3:setWidth(32);
    obj.image3:setHeight(32);
    obj.image3:setSRC("https://cdn-icons-png.flaticon.com/512/3548/3548868.png");
    obj.image3:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image3:setName("image3");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.flowPart3);
    obj.label8:setFontSize(32);
    obj.label8:setAutoSize(true);
    obj.label8:setWordWrap(false);
    obj.label8:setAlign("left");
    obj.label8:setText("Agilidade");
    obj.label8:setName("label8");
    obj.label8:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");

    obj.comboBox3 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox3:setParent(obj.flowPart3);
    obj.comboBox3:setAlign("left");
    obj.comboBox3:setItems({1, 2, 3, 4, 5});
    obj.comboBox3:setValue("1");
    obj.comboBox3:setFontSize(16);
    obj.comboBox3:setMargins({left=58, top=0, bottom=0, right=10});
    obj.comboBox3:setWidth(64);
    obj.comboBox3:setField("nivelAgilidade");
    obj.comboBox3:setName("comboBox3");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.flowPart3);
    obj.edit11:setAlign("left");
    obj.edit11:setType("number");
    obj.edit11:setFontSize(16);
    obj.edit11:setWidth(64);
    obj.edit11:setField("pontosAgilidade");
    obj.edit11:setName("edit11");
    obj.edit11:setFontFamily("MADE TOMMY");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.flowPart3);
    obj.edit12:setAlign("left");
    obj.edit12:setReadOnly(true);
    obj.edit12:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit12:setFontSize(16);
    obj.edit12:setWidth(64);
    obj.edit12:setField("pontosAgilidadeBonusPassivo");
    obj.edit12:setName("edit12");
    obj.edit12:setFontFamily("MADE TOMMY");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.flowPart3);
    obj.label9:setText("Xp");
    obj.label9:setAlign("left");
    obj.label9:setAutoSize(true);
    obj.label9:setWordWrap(false);
    obj.label9:setFontSize(32);
    obj.label9:setName("label9");
    obj.label9:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.flowPart3);
    obj.edit13:setAlign("left");
    obj.edit13:setType("number");
    obj.edit13:setFontSize(16);
    obj.edit13:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit13:setWidth(64);
    obj.edit13:setField("xpAtualAgilidade");
    obj.edit13:setName("edit13");
    obj.edit13:setFontFamily("MADE TOMMY");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.flowPart3);
    obj.edit14:setAlign("left");
    obj.edit14:setReadOnly(true);
    obj.edit14:setFontSize(16);
    obj.edit14:setWidth(64);
    obj.edit14:setField("xpNecessarioAgilidade");
    obj.edit14:setName("edit14");
    obj.edit14:setFontFamily("MADE TOMMY");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.flowPart3);
    obj.label10:setText("Total");
    obj.label10:setAlign("left");
    obj.label10:setAutoSize(true);
    obj.label10:setWordWrap(false);
    obj.label10:setFontSize(32);
    obj.label10:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label10:setName("label10");
    obj.label10:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.flowPart3);
    obj.edit15:setAlign("left");
    obj.edit15:setReadOnly(true);
    obj.edit15:setFontSize(16);
    obj.edit15:setWidth(64);
    obj.edit15:setField("totalAgilidade");
    obj.edit15:setName("edit15");
    obj.edit15:setFontFamily("MADE TOMMY");

    obj.flowPart4 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart4:setParent(obj.flowLayout1);
    obj.flowPart4:setHeight(36);
    obj.flowPart4:setMaxWidth(1024.0);
    obj.flowPart4:setName("flowPart4");
    obj.flowPart4:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.flowPart4);
    obj.image4:setAlign("left");
    obj.image4:setWidth(32);
    obj.image4:setHeight(32);
    obj.image4:setSRC("https://cdn-icons-png.flaticon.com/128/3548/3548975.png");
    obj.image4:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image4:setName("image4");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.flowPart4);
    obj.label11:setFontSize(32);
    obj.label11:setAutoSize(true);
    obj.label11:setWordWrap(false);
    obj.label11:setAlign("left");
    obj.label11:setText("Percepção");
    obj.label11:setName("label11");
    obj.label11:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");

    obj.comboBox4 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox4:setParent(obj.flowPart4);
    obj.comboBox4:setAlign("left");
    obj.comboBox4:setItems({1, 2, 3, 4, 5});
    obj.comboBox4:setValue("1");
    obj.comboBox4:setFontSize(16);
    obj.comboBox4:setMargins({left=50, top=0, bottom=0, right=10});
    obj.comboBox4:setWidth(64);
    obj.comboBox4:setField("nivelPercepcao");
    obj.comboBox4:setName("comboBox4");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.flowPart4);
    obj.edit16:setAlign("left");
    obj.edit16:setType("number");
    obj.edit16:setFontSize(16);
    obj.edit16:setWidth(64);
    obj.edit16:setField("pontosPercepcao");
    obj.edit16:setName("edit16");
    obj.edit16:setFontFamily("MADE TOMMY");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.flowPart4);
    obj.edit17:setAlign("left");
    obj.edit17:setReadOnly(true);
    obj.edit17:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit17:setFontSize(16);
    obj.edit17:setWidth(64);
    obj.edit17:setField("pontosPercepcaoBonusPassivo");
    obj.edit17:setName("edit17");
    obj.edit17:setFontFamily("MADE TOMMY");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.flowPart4);
    obj.label12:setText("Xp");
    obj.label12:setAlign("left");
    obj.label12:setAutoSize(true);
    obj.label12:setWordWrap(false);
    obj.label12:setFontSize(32);
    obj.label12:setName("label12");
    obj.label12:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.flowPart4);
    obj.edit18:setAlign("left");
    obj.edit18:setType("number");
    obj.edit18:setFontSize(16);
    obj.edit18:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit18:setWidth(64);
    obj.edit18:setField("xpAtualPercepcao");
    obj.edit18:setName("edit18");
    obj.edit18:setFontFamily("MADE TOMMY");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.flowPart4);
    obj.edit19:setAlign("left");
    obj.edit19:setReadOnly(true);
    obj.edit19:setFontSize(16);
    obj.edit19:setWidth(64);
    obj.edit19:setField("xpNecessarioPercepcao");
    obj.edit19:setName("edit19");
    obj.edit19:setFontFamily("MADE TOMMY");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.flowPart4);
    obj.label13:setText("Total");
    obj.label13:setAlign("left");
    obj.label13:setAutoSize(true);
    obj.label13:setWordWrap(false);
    obj.label13:setFontSize(32);
    obj.label13:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label13:setName("label13");
    obj.label13:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.flowPart4);
    obj.edit20:setAlign("left");
    obj.edit20:setReadOnly(true);
    obj.edit20:setFontSize(16);
    obj.edit20:setWidth(64);
    obj.edit20:setField("totalPercepcao");
    obj.edit20:setName("edit20");
    obj.edit20:setFontFamily("MADE TOMMY");

    obj.flowPart5 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart5:setParent(obj.flowLayout1);
    obj.flowPart5:setHeight(36);
    obj.flowPart5:setMaxWidth(1024.0);
    obj.flowPart5:setName("flowPart5");
    obj.flowPart5:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.flowPart5);
    obj.image5:setAlign("left");
    obj.image5:setWidth(32);
    obj.image5:setHeight(32);
    obj.image5:setSRC("https://cdn-icons-png.flaticon.com/512/3549/3549871.png");
    obj.image5:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image5:setName("image5");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.flowPart5);
    obj.label14:setFontSize(32);
    obj.label14:setAutoSize(true);
    obj.label14:setWordWrap(false);
    obj.label14:setAlign("left");
    obj.label14:setText("Resistencia");
    obj.label14:setName("label14");
    obj.label14:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");

    obj.comboBox5 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox5:setParent(obj.flowPart5);
    obj.comboBox5:setAlign("left");
    obj.comboBox5:setItems({1, 2, 3, 4, 5});
    obj.comboBox5:setValue("1");
    obj.comboBox5:setFontSize(16);
    obj.comboBox5:setMargins({left=40, top=0, bottom=0, right=10});
    obj.comboBox5:setWidth(64);
    obj.comboBox5:setField("nivelResistencia");
    obj.comboBox5:setName("comboBox5");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.flowPart5);
    obj.edit21:setAlign("left");
    obj.edit21:setType("number");
    obj.edit21:setFontSize(16);
    obj.edit21:setWidth(64);
    obj.edit21:setField("pontosResistencia");
    obj.edit21:setName("edit21");
    obj.edit21:setFontFamily("MADE TOMMY");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.flowPart5);
    obj.edit22:setAlign("left");
    obj.edit22:setReadOnly(true);
    obj.edit22:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit22:setFontSize(16);
    obj.edit22:setWidth(64);
    obj.edit22:setField("pontosResistenciaBonusPassivo");
    obj.edit22:setName("edit22");
    obj.edit22:setFontFamily("MADE TOMMY");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.flowPart5);
    obj.label15:setText("Xp");
    obj.label15:setAlign("left");
    obj.label15:setAutoSize(true);
    obj.label15:setWordWrap(false);
    obj.label15:setFontSize(32);
    obj.label15:setName("label15");
    obj.label15:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.flowPart5);
    obj.edit23:setAlign("left");
    obj.edit23:setType("number");
    obj.edit23:setFontSize(16);
    obj.edit23:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit23:setWidth(64);
    obj.edit23:setField("xpAtualResistencia");
    obj.edit23:setName("edit23");
    obj.edit23:setFontFamily("MADE TOMMY");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.flowPart5);
    obj.edit24:setAlign("left");
    obj.edit24:setReadOnly(true);
    obj.edit24:setFontSize(16);
    obj.edit24:setWidth(64);
    obj.edit24:setField("xpNecessarioResistencia");
    obj.edit24:setName("edit24");
    obj.edit24:setFontFamily("MADE TOMMY");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.flowPart5);
    obj.label16:setText("Total");
    obj.label16:setAlign("left");
    obj.label16:setAutoSize(true);
    obj.label16:setWordWrap(false);
    obj.label16:setFontSize(32);
    obj.label16:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label16:setName("label16");
    obj.label16:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.flowPart5);
    obj.edit25:setAlign("left");
    obj.edit25:setReadOnly(true);
    obj.edit25:setFontSize(16);
    obj.edit25:setWidth(64);
    obj.edit25:setField("totalResistencia");
    obj.edit25:setName("edit25");
    obj.edit25:setFontFamily("MADE TOMMY");

    obj.flowPart6 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart6:setParent(obj.flowLayout1);
    obj.flowPart6:setHeight(36);
    obj.flowPart6:setMaxWidth(1024.0);
    obj.flowPart6:setName("flowPart6");
    obj.flowPart6:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.flowPart6);
    obj.image6:setAlign("left");
    obj.image6:setWidth(32);
    obj.image6:setHeight(32);
    obj.image6:setSRC("https://cdn-icons-png.flaticon.com/512/3548/3548950.png");
    obj.image6:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image6:setName("image6");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.flowPart6);
    obj.label17:setFontSize(32);
    obj.label17:setAutoSize(true);
    obj.label17:setWordWrap(false);
    obj.label17:setAlign("left");
    obj.label17:setText("Defesa");
    obj.label17:setName("label17");
    obj.label17:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");

    obj.comboBox6 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox6:setParent(obj.flowPart6);
    obj.comboBox6:setAlign("left");
    obj.comboBox6:setItems({1, 2, 3, 4, 5});
    obj.comboBox6:setValue("1");
    obj.comboBox6:setFontSize(16);
    obj.comboBox6:setMargins({left=99, top=0, bottom=0, right=10});
    obj.comboBox6:setWidth(64);
    obj.comboBox6:setField("nivelDefesa");
    obj.comboBox6:setName("comboBox6");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.flowPart6);
    obj.edit26:setAlign("left");
    obj.edit26:setType("number");
    obj.edit26:setFontSize(16);
    obj.edit26:setWidth(64);
    obj.edit26:setField("pontosDefesa");
    obj.edit26:setName("edit26");
    obj.edit26:setFontFamily("MADE TOMMY");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.flowPart6);
    obj.edit27:setAlign("left");
    obj.edit27:setReadOnly(true);
    obj.edit27:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit27:setFontSize(16);
    obj.edit27:setWidth(64);
    obj.edit27:setField("pontosDefesaBonusPassivo");
    obj.edit27:setName("edit27");
    obj.edit27:setFontFamily("MADE TOMMY");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.flowPart6);
    obj.label18:setText("Xp");
    obj.label18:setAlign("left");
    obj.label18:setAutoSize(true);
    obj.label18:setWordWrap(false);
    obj.label18:setFontSize(32);
    obj.label18:setName("label18");
    obj.label18:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.flowPart6);
    obj.edit28:setAlign("left");
    obj.edit28:setType("number");
    obj.edit28:setFontSize(16);
    obj.edit28:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit28:setWidth(64);
    obj.edit28:setField("xpAtualDefesa");
    obj.edit28:setName("edit28");
    obj.edit28:setFontFamily("MADE TOMMY");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.flowPart6);
    obj.edit29:setAlign("left");
    obj.edit29:setReadOnly(true);
    obj.edit29:setFontSize(16);
    obj.edit29:setWidth(64);
    obj.edit29:setField("xpNecessarioDefesa");
    obj.edit29:setName("edit29");
    obj.edit29:setFontFamily("MADE TOMMY");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.flowPart6);
    obj.label19:setText("Total");
    obj.label19:setAlign("left");
    obj.label19:setAutoSize(true);
    obj.label19:setWordWrap(false);
    obj.label19:setFontSize(32);
    obj.label19:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label19:setName("label19");
    obj.label19:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.flowPart6);
    obj.edit30:setAlign("left");
    obj.edit30:setReadOnly(true);
    obj.edit30:setFontSize(16);
    obj.edit30:setWidth(64);
    obj.edit30:setField("totalDefesa");
    obj.edit30:setName("edit30");
    obj.edit30:setFontFamily("MADE TOMMY");

    obj.flowPart7 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart7:setParent(obj.flowLayout1);
    obj.flowPart7:setHeight(36);
    obj.flowPart7:setMaxWidth(1024.0);
    obj.flowPart7:setName("flowPart7");
    obj.flowPart7:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.flowPart7);
    obj.image7:setAlign("left");
    obj.image7:setWidth(32);
    obj.image7:setHeight(32);
    obj.image7:setSRC("https://cdn-icons-png.flaticon.com/512/3549/3549905.png");
    obj.image7:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image7:setName("image7");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.flowPart7);
    obj.label20:setFontSize(32);
    obj.label20:setAutoSize(true);
    obj.label20:setWordWrap(false);
    obj.label20:setAlign("left");
    obj.label20:setText("Destreza");
    obj.label20:setName("label20");
    obj.label20:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label20, "fontStyle",  "bold");

    obj.comboBox7 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox7:setParent(obj.flowPart7);
    obj.comboBox7:setAlign("left");
    obj.comboBox7:setItems({1, 2, 3, 4, 5});
    obj.comboBox7:setValue("1");
    obj.comboBox7:setFontSize(16);
    obj.comboBox7:setMargins({left=71, top=0, bottom=0, right=10});
    obj.comboBox7:setWidth(64);
    obj.comboBox7:setField("nivelDestreza");
    obj.comboBox7:setName("comboBox7");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.flowPart7);
    obj.edit31:setAlign("left");
    obj.edit31:setType("number");
    obj.edit31:setFontSize(16);
    obj.edit31:setWidth(64);
    obj.edit31:setField("pontosDestreza");
    obj.edit31:setName("edit31");
    obj.edit31:setFontFamily("MADE TOMMY");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.flowPart7);
    obj.edit32:setAlign("left");
    obj.edit32:setReadOnly(true);
    obj.edit32:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit32:setFontSize(16);
    obj.edit32:setWidth(64);
    obj.edit32:setField("pontosDestrezaBonusPassivo");
    obj.edit32:setName("edit32");
    obj.edit32:setFontFamily("MADE TOMMY");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.flowPart7);
    obj.label21:setText("Xp");
    obj.label21:setAlign("left");
    obj.label21:setAutoSize(true);
    obj.label21:setWordWrap(false);
    obj.label21:setFontSize(32);
    obj.label21:setName("label21");
    obj.label21:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label21, "fontStyle",  "bold");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.flowPart7);
    obj.edit33:setAlign("left");
    obj.edit33:setType("number");
    obj.edit33:setFontSize(16);
    obj.edit33:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit33:setWidth(64);
    obj.edit33:setField("xpAtualDestreza");
    obj.edit33:setName("edit33");
    obj.edit33:setFontFamily("MADE TOMMY");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.flowPart7);
    obj.edit34:setAlign("left");
    obj.edit34:setReadOnly(true);
    obj.edit34:setFontSize(16);
    obj.edit34:setWidth(64);
    obj.edit34:setField("xpNecessarioDestreza");
    obj.edit34:setName("edit34");
    obj.edit34:setFontFamily("MADE TOMMY");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.flowPart7);
    obj.label22:setText("Total");
    obj.label22:setAlign("left");
    obj.label22:setAutoSize(true);
    obj.label22:setWordWrap(false);
    obj.label22:setFontSize(32);
    obj.label22:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label22:setName("label22");
    obj.label22:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label22, "fontStyle",  "bold");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.flowPart7);
    obj.edit35:setAlign("left");
    obj.edit35:setReadOnly(true);
    obj.edit35:setFontSize(16);
    obj.edit35:setWidth(64);
    obj.edit35:setField("totalDestreza");
    obj.edit35:setName("edit35");
    obj.edit35:setFontFamily("MADE TOMMY");

    obj.flowPart8 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart8:setParent(obj.flowLayout1);
    obj.flowPart8:setHeight(36);
    obj.flowPart8:setMaxWidth(1024.0);
    obj.flowPart8:setName("flowPart8");
    obj.flowPart8:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.flowPart8);
    obj.image8:setAlign("left");
    obj.image8:setWidth(32);
    obj.image8:setHeight(32);
    obj.image8:setSRC("https://cdn-icons-png.flaticon.com/512/3548/3548932.png");
    obj.image8:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image8:setName("image8");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.flowPart8);
    obj.label23:setFontSize(32);
    obj.label23:setAutoSize(true);
    obj.label23:setWordWrap(false);
    obj.label23:setAlign("left");
    obj.label23:setText("Controle");
    obj.label23:setName("label23");
    obj.label23:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label23, "fontStyle",  "bold");

    obj.comboBox8 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox8:setParent(obj.flowPart8);
    obj.comboBox8:setAlign("left");
    obj.comboBox8:setItems({1, 2, 3, 4, 5});
    obj.comboBox8:setValue("1");
    obj.comboBox8:setFontSize(16);
    obj.comboBox8:setMargins({left=76, top=0, bottom=0, right=10});
    obj.comboBox8:setWidth(64);
    obj.comboBox8:setField("nivelControle");
    obj.comboBox8:setName("comboBox8");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.flowPart8);
    obj.edit36:setAlign("left");
    obj.edit36:setType("number");
    obj.edit36:setFontSize(16);
    obj.edit36:setWidth(64);
    obj.edit36:setField("pontosControle");
    obj.edit36:setName("edit36");
    obj.edit36:setFontFamily("MADE TOMMY");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.flowPart8);
    obj.edit37:setAlign("left");
    obj.edit37:setReadOnly(true);
    obj.edit37:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit37:setFontSize(16);
    obj.edit37:setWidth(64);
    obj.edit37:setField("pontosControleBonusPassivo");
    obj.edit37:setName("edit37");
    obj.edit37:setFontFamily("MADE TOMMY");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.flowPart8);
    obj.label24:setText("Xp");
    obj.label24:setAlign("left");
    obj.label24:setAutoSize(true);
    obj.label24:setWordWrap(false);
    obj.label24:setFontSize(32);
    obj.label24:setName("label24");
    obj.label24:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label24, "fontStyle",  "bold");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.flowPart8);
    obj.edit38:setAlign("left");
    obj.edit38:setType("number");
    obj.edit38:setFontSize(16);
    obj.edit38:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit38:setWidth(64);
    obj.edit38:setField("xpAtualControle");
    obj.edit38:setName("edit38");
    obj.edit38:setFontFamily("MADE TOMMY");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.flowPart8);
    obj.edit39:setAlign("left");
    obj.edit39:setReadOnly(true);
    obj.edit39:setFontSize(16);
    obj.edit39:setWidth(64);
    obj.edit39:setField("xpNecessarioControle");
    obj.edit39:setName("edit39");
    obj.edit39:setFontFamily("MADE TOMMY");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.flowPart8);
    obj.label25:setText("Total");
    obj.label25:setAlign("left");
    obj.label25:setAutoSize(true);
    obj.label25:setWordWrap(false);
    obj.label25:setFontSize(32);
    obj.label25:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label25:setName("label25");
    obj.label25:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label25, "fontStyle",  "bold");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.flowPart8);
    obj.edit40:setAlign("left");
    obj.edit40:setReadOnly(true);
    obj.edit40:setFontSize(16);
    obj.edit40:setWidth(64);
    obj.edit40:setField("totalControle");
    obj.edit40:setName("edit40");
    obj.edit40:setFontFamily("MADE TOMMY");

    obj.flowPart9 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart9:setParent(obj.flowLayout1);
    obj.flowPart9:setHeight(36);
    obj.flowPart9:setMaxWidth(1024.0);
    obj.flowPart9:setName("flowPart9");
    obj.flowPart9:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.flowPart9);
    obj.image9:setAlign("left");
    obj.image9:setWidth(32);
    obj.image9:setHeight(32);
    obj.image9:setSRC("https://cdn-icons-png.flaticon.com/512/3548/3548899.png");
    obj.image9:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image9:setName("image9");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.flowPart9);
    obj.label26:setFontSize(32);
    obj.label26:setAutoSize(true);
    obj.label26:setWordWrap(false);
    obj.label26:setAlign("left");
    obj.label26:setText("Mental");
    obj.label26:setName("label26");
    obj.label26:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label26, "fontStyle",  "bold");

    obj.comboBox9 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox9:setParent(obj.flowPart9);
    obj.comboBox9:setAlign("left");
    obj.comboBox9:setItems({1, 2, 3, 4, 5});
    obj.comboBox9:setValue("1");
    obj.comboBox9:setFontSize(16);
    obj.comboBox9:setMargins({left=96, top=0, bottom=0, right=10});
    obj.comboBox9:setWidth(64);
    obj.comboBox9:setField("nivelMental");
    obj.comboBox9:setName("comboBox9");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.flowPart9);
    obj.edit41:setAlign("left");
    obj.edit41:setType("number");
    obj.edit41:setFontSize(16);
    obj.edit41:setWidth(64);
    obj.edit41:setField("pontosMental");
    obj.edit41:setName("edit41");
    obj.edit41:setFontFamily("MADE TOMMY");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.flowPart9);
    obj.edit42:setAlign("left");
    obj.edit42:setReadOnly(true);
    obj.edit42:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit42:setFontSize(16);
    obj.edit42:setWidth(64);
    obj.edit42:setField("pontosMentalBonusPassivo");
    obj.edit42:setName("edit42");
    obj.edit42:setFontFamily("MADE TOMMY");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.flowPart9);
    obj.label27:setText("Xp");
    obj.label27:setAlign("left");
    obj.label27:setAutoSize(true);
    obj.label27:setWordWrap(false);
    obj.label27:setFontSize(32);
    obj.label27:setName("label27");
    obj.label27:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label27, "fontStyle",  "bold");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.flowPart9);
    obj.edit43:setAlign("left");
    obj.edit43:setType("number");
    obj.edit43:setFontSize(16);
    obj.edit43:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit43:setWidth(64);
    obj.edit43:setField("xpAtualMental");
    obj.edit43:setName("edit43");
    obj.edit43:setFontFamily("MADE TOMMY");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.flowPart9);
    obj.edit44:setAlign("left");
    obj.edit44:setReadOnly(true);
    obj.edit44:setFontSize(16);
    obj.edit44:setWidth(64);
    obj.edit44:setField("xpNecessarioMental");
    obj.edit44:setName("edit44");
    obj.edit44:setFontFamily("MADE TOMMY");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.flowPart9);
    obj.label28:setText("Total");
    obj.label28:setAlign("left");
    obj.label28:setAutoSize(true);
    obj.label28:setWordWrap(false);
    obj.label28:setFontSize(32);
    obj.label28:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label28:setName("label28");
    obj.label28:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label28, "fontStyle",  "bold");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.flowPart9);
    obj.edit45:setAlign("left");
    obj.edit45:setReadOnly(true);
    obj.edit45:setFontSize(16);
    obj.edit45:setWidth(64);
    obj.edit45:setField("totalMental");
    obj.edit45:setName("edit45");
    obj.edit45:setFontFamily("MADE TOMMY");

    obj.flowPart10 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart10:setParent(obj.flowLayout1);
    obj.flowPart10:setHeight(36);
    obj.flowPart10:setMaxWidth(1024.0);
    obj.flowPart10:setName("flowPart10");
    obj.flowPart10:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.flowPart10);
    obj.image10:setAlign("left");
    obj.image10:setWidth(32);
    obj.image10:setHeight(32);
    obj.image10:setSRC("https://cdn-icons-png.flaticon.com/512/3548/3548884.png");
    obj.image10:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image10:setName("image10");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.flowPart10);
    obj.label29:setFontSize(32);
    obj.label29:setAutoSize(true);
    obj.label29:setWordWrap(false);
    obj.label29:setAlign("left");
    obj.label29:setText("Balanço");
    obj.label29:setName("label29");
    obj.label29:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label29, "fontStyle",  "bold");

    obj.comboBox10 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox10:setParent(obj.flowPart10);
    obj.comboBox10:setAlign("left");
    obj.comboBox10:setItems({1, 2, 3, 4, 5});
    obj.comboBox10:setValue("1");
    obj.comboBox10:setFontSize(16);
    obj.comboBox10:setMargins({left=88, top=0, bottom=0, right=10});
    obj.comboBox10:setWidth(64);
    obj.comboBox10:setField("nivelBalanco");
    obj.comboBox10:setName("comboBox10");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.flowPart10);
    obj.edit46:setAlign("left");
    obj.edit46:setType("number");
    obj.edit46:setFontSize(16);
    obj.edit46:setWidth(64);
    obj.edit46:setField("pontosBalanco");
    obj.edit46:setName("edit46");
    obj.edit46:setFontFamily("MADE TOMMY");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.flowPart10);
    obj.edit47:setAlign("left");
    obj.edit47:setReadOnly(true);
    obj.edit47:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit47:setFontSize(16);
    obj.edit47:setWidth(64);
    obj.edit47:setField("pontosBalancoBonusPassivo");
    obj.edit47:setName("edit47");
    obj.edit47:setFontFamily("MADE TOMMY");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.flowPart10);
    obj.label30:setText("Xp");
    obj.label30:setAlign("left");
    obj.label30:setAutoSize(true);
    obj.label30:setWordWrap(false);
    obj.label30:setFontSize(32);
    obj.label30:setName("label30");
    obj.label30:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label30, "fontStyle",  "bold");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.flowPart10);
    obj.edit48:setAlign("left");
    obj.edit48:setType("number");
    obj.edit48:setFontSize(16);
    obj.edit48:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit48:setWidth(64);
    obj.edit48:setField("xpAtualBalanco");
    obj.edit48:setName("edit48");
    obj.edit48:setFontFamily("MADE TOMMY");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.flowPart10);
    obj.edit49:setAlign("left");
    obj.edit49:setReadOnly(true);
    obj.edit49:setFontSize(16);
    obj.edit49:setWidth(64);
    obj.edit49:setField("xpNecessarioBalanco");
    obj.edit49:setName("edit49");
    obj.edit49:setFontFamily("MADE TOMMY");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.flowPart10);
    obj.label31:setText("Total");
    obj.label31:setAlign("left");
    obj.label31:setAutoSize(true);
    obj.label31:setWordWrap(false);
    obj.label31:setFontSize(32);
    obj.label31:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label31:setName("label31");
    obj.label31:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label31, "fontStyle",  "bold");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.flowPart10);
    obj.edit50:setAlign("left");
    obj.edit50:setReadOnly(true);
    obj.edit50:setFontSize(16);
    obj.edit50:setWidth(64);
    obj.edit50:setField("totalBalanco");
    obj.edit50:setName("edit50");
    obj.edit50:setFontFamily("MADE TOMMY");

    obj.flowPart11 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart11:setParent(obj.flowLayout1);
    obj.flowPart11:setHeight(36);
    obj.flowPart11:setMaxWidth(1024.0);
    obj.flowPart11:setName("flowPart11");
    obj.flowPart11:setMargins({left=5, right=5, top=5, bottom=5});

    obj.image11 = GUI.fromHandle(_obj_newObject("image"));
    obj.image11:setParent(obj.flowPart11);
    obj.image11:setAlign("left");
    obj.image11:setWidth(32);
    obj.image11:setHeight(32);
    obj.image11:setSRC("https://cdn-icons-png.flaticon.com/128/3549/3549893.png");
    obj.image11:setMargins({left=0, top=0, bottom=0, right=10});
    obj.image11:setName("image11");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.flowPart11);
    obj.label32:setFontSize(32);
    obj.label32:setAutoSize(true);
    obj.label32:setWordWrap(false);
    obj.label32:setAlign("left");
    obj.label32:setText("Carisma");
    obj.label32:setName("label32");
    obj.label32:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label32, "fontStyle",  "bold");

    obj.comboBox11 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox11:setParent(obj.flowPart11);
    obj.comboBox11:setAlign("left");
    obj.comboBox11:setItems({1, 2, 3, 4, 5});
    obj.comboBox11:setValue("1");
    obj.comboBox11:setFontSize(16);
    obj.comboBox11:setMargins({left=88, top=0, bottom=0, right=10});
    obj.comboBox11:setWidth(64);
    obj.comboBox11:setField("nivelCarisma");
    obj.comboBox11:setName("comboBox11");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.flowPart11);
    obj.edit51:setAlign("left");
    obj.edit51:setType("number");
    obj.edit51:setFontSize(16);
    obj.edit51:setWidth(64);
    obj.edit51:setField("pontosCarisma");
    obj.edit51:setName("edit51");
    obj.edit51:setFontFamily("MADE TOMMY");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.flowPart11);
    obj.edit52:setAlign("left");
    obj.edit52:setReadOnly(true);
    obj.edit52:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit52:setFontSize(16);
    obj.edit52:setWidth(64);
    obj.edit52:setField("pontosCarismaBonusPassivo");
    obj.edit52:setName("edit52");
    obj.edit52:setFontFamily("MADE TOMMY");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.flowPart11);
    obj.label33:setText("Xp");
    obj.label33:setAlign("left");
    obj.label33:setAutoSize(true);
    obj.label33:setWordWrap(false);
    obj.label33:setFontSize(32);
    obj.label33:setName("label33");
    obj.label33:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label33, "fontStyle",  "bold");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.flowPart11);
    obj.edit53:setAlign("left");
    obj.edit53:setType("number");
    obj.edit53:setFontSize(16);
    obj.edit53:setMargins({left=10, top=0, bottom=0, right=10});
    obj.edit53:setWidth(64);
    obj.edit53:setField("xpAtualCarisma");
    obj.edit53:setName("edit53");
    obj.edit53:setFontFamily("MADE TOMMY");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.flowPart11);
    obj.edit54:setAlign("left");
    obj.edit54:setReadOnly(true);
    obj.edit54:setFontSize(16);
    obj.edit54:setWidth(64);
    obj.edit54:setField("xpNecessarioCarisma");
    obj.edit54:setName("edit54");
    obj.edit54:setFontFamily("MADE TOMMY");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.flowPart11);
    obj.label34:setText("Total");
    obj.label34:setAlign("left");
    obj.label34:setAutoSize(true);
    obj.label34:setWordWrap(false);
    obj.label34:setFontSize(32);
    obj.label34:setMargins({left=10, top=0, bottom=0, right=10});
    obj.label34:setName("label34");
    obj.label34:setFontFamily("KARASHA");
    lfm_setPropAsString(obj.label34, "fontStyle",  "bold");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.flowPart11);
    obj.edit55:setAlign("left");
    obj.edit55:setReadOnly(true);
    obj.edit55:setFontSize(16);
    obj.edit55:setWidth(64);
    obj.edit55:setField("totalCarisma");
    obj.edit55:setName("edit55");
    obj.edit55:setFontFamily("MADE TOMMY");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.flowPart8 ~= nil then self.flowPart8:destroy(); self.flowPart8 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.flowPart10 ~= nil then self.flowPart10:destroy(); self.flowPart10 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.flowPart7 ~= nil then self.flowPart7:destroy(); self.flowPart7 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
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
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
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
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.comboBox10 ~= nil then self.comboBox10:destroy(); self.comboBox10 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.image11 ~= nil then self.image11:destroy(); self.image11 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.flowPart4 ~= nil then self.flowPart4:destroy(); self.flowPart4 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
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
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.comboBox5 ~= nil then self.comboBox5:destroy(); self.comboBox5 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.flowPart5 ~= nil then self.flowPart5:destroy(); self.flowPart5 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.flowPart9 ~= nil then self.flowPart9:destroy(); self.flowPart9 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.flowPart11 ~= nil then self.flowPart11:destroy(); self.flowPart11 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.comboBox9 ~= nil then self.comboBox9:destroy(); self.comboBox9 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.flowPart6 ~= nil then self.flowPart6:destroy(); self.flowPart6 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.comboBox8 ~= nil then self.comboBox8:destroy(); self.comboBox8 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.flowPart3 ~= nil then self.flowPart3:destroy(); self.flowPart3 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
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
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmStatus()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmStatus();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmStatus = {
    newEditor = newfrmStatus, 
    new = newfrmStatus, 
    name = "frmStatus", 
    dataType = "DATA_TYPE_AQUI", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Naruto No Atarashi Ninja Paradise", 
    description=""};

frmStatus = _frmStatus;
Firecast.registrarForm(_frmStatus);
Firecast.registrarDataType(_frmStatus);

return _frmStatus;
