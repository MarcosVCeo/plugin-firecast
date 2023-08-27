require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmFichaTeste1()
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
    obj:setFormType("sheetTemplate");
    obj:setDataType("DATA_TYPE_AQUI");
    obj:setTitle("Naruto No Atarashi Ninja Paradise");
    obj:setName("frmFichaTeste1");
    obj:setAlign("client");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj);
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

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.flowPart2);
    obj.edit1:setAlign("client");
    obj.edit1:setFontSize(36);
    obj.edit1:setName("edit1");

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

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.flowPart3);
    obj.edit2:setAlign("left");
    obj.edit2:setFontSize(36);
    obj.edit2:setName("edit2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.flowPart3);
    obj.label3:setAlign("left");
    obj.label3:setText("Vila Natal");
    obj.label3:setFontSize(36);
    obj.label3:setAutoSize(true);
    obj.label3:setWordWrap(false);
    obj.label3:setMargins({left=20, top=0, bottom=0, right=20});
    obj.label3:setName("label3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.flowPart3);
    obj.edit3:setAlign("left");
    obj.edit3:setWidth(360);
    obj.edit3:setFontSize(36);
    obj.edit3:setName("edit3");

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

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.flowPart6);
    obj.richEdit1:setWidth(765);
    obj.richEdit1:setHeight(120);
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "grey");
    obj.richEdit1:setTop(40);
    obj.richEdit1:setName("richEdit1");

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

        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.flowPart3 ~= nil then self.flowPart3:destroy(); self.flowPart3 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.flowPart5 ~= nil then self.flowPart5:destroy(); self.flowPart5 = nil; end;
        if self.comboBoxElemento ~= nil then self.comboBoxElemento:destroy(); self.comboBoxElemento = nil; end;
        if self.imagem_avatar ~= nil then self.imagem_avatar:destroy(); self.imagem_avatar = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.flowPart2 ~= nil then self.flowPart2:destroy(); self.flowPart2 = nil; end;
        if self.flowPart4 ~= nil then self.flowPart4:destroy(); self.flowPart4 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.flowPart6 ~= nil then self.flowPart6:destroy(); self.flowPart6 = nil; end;
        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmFichaTeste1()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmFichaTeste1();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmFichaTeste1 = {
    newEditor = newfrmFichaTeste1, 
    new = newfrmFichaTeste1, 
    name = "frmFichaTeste1", 
    dataType = "DATA_TYPE_AQUI", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Naruto No Atarashi Ninja Paradise", 
    description=""};

frmFichaTeste1 = _frmFichaTeste1;
Firecast.registrarForm(_frmFichaTeste1);
Firecast.registrarDataType(_frmFichaTeste1);

return _frmFichaTeste1;
