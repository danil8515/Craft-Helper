script_name('Craft Helper')
script_author('kopnev')
script_version('1.0')
script_version_number(1)

local imgui 	 = require 'imgui'
local encoding = require 'encoding'
local inicfg   = require 'inicfg'

encoding.default = 'CP1251'
u8 = encoding.UTF8

local settings_window = imgui.ImBool(false)
local main_window = imgui.ImBool(false)

local craft = {
	{
		typee = "Аксессуары",
		list = {
				{
					name = "Колонка",
					craft1 = "Металл",
					value1 = "30",
					craft2 = "Бронза",
					value2 = "2",
					craft3 = "Материалы",
					value3 = "25",
					craft4 = "",
					value4 = "",
					price = "1000",
					chance = "1"
				},
				{
					name = "Огнетушитель",
					craft1 = "Металл",
					value1 = "20",
					craft2 = "Камень",
					value2 = "30",
					craft3 = "Материалы",
					value3 = "10",
					craft4 = "Серебро",
					value4 = "1",
					price = "1000",
					chance = "1"
				},
				{
					name = "Бита с гвоздями",
					craft1 = "Металл",
					value1 = "19",
					craft2 = "Дрова",
					value2 = "2",
					craft3 = "Материалы",
					value3 = "7",
					craft4 = "Лён",
					value4 = "21",
					price = "1000",
					chance = "1"
				},
				{
					name = "Меч ",
					craft1 = "Металл ",
					value1 = "32 ",
					craft2 = "Кмень ",
					value2 = "10 ",
					craft3 = "Материалы ",
					value3 = "8 ",
					craft4 = "Серебро ",
					value4 = "5 ",
					price = "1000",
					chance = "1"
				},
				{
					name = "Молот ",
					craft1 = "Металл ",
					value1 = "28",
					craft2 = "Дрова ",
					value2 = "3 ",
					craft3 = "Материалы ",
					value3 = "4 ",
					craft4 = "Хлопок ",
					value4 = "13 ",
					price = "1000",
					chance = "1"
				},
				{
					name = "Маска CJ",
					craft1 = "Хлопок ",
					value1 = "40",
					craft2 = "Лён ",
					value2 = "22",
					craft3 = "Материалы ",
					value3 = "2",
					craft4 = "",
					value4 = "",
					price = "1000",
					chance = "1"
				},
				{
					name = "Красный чемодан",
					craft1 = "Хлопок ",
					value1 = "14",
					craft2 = "Лён ",
					value2 = "11",
					craft3 = "Материалы ",
					value3 = "4",
					craft4 = "Балончик с краской",
					value4 = "1",
					price = "1000",
					chance = "1"
				},
				{
					name = "Шлем",
					craft1 = "Металл",
					value1 = "13 ",
					craft2 = "Хлопок ",
					value2 = "17 ",
					craft3 = "Лён ",
					value3 = "9 ",
					craft4 = "Материалы ",
					value4 = "6",
					price = "1000",
					chance = "1"
				},
				{
					name = "Маска",
					craft1 = "хлопок ",
					value1 = "11 ",
					craft2 = "Лён ",
					value2 = "9 ",
					craft3 = "",
					value3 = "",
					craft4 = "",
					value4 = "",
					price = "1000",
					chance = "1"
				},
				{
					name = "Шапка",
					craft1 = "Хлопок ",
					value1 = "11 ",
					craft2 = "Лён ",
					value2 = "11 ",
					craft3 = "",
					value3 = "",
					craft4 = "",
					value4 = "",
					price = "1000",
					chance = "1"
				},
				{
					name = "Жилет",
					craft1 = "Хлопок ",
					value1 = "20 ",
					craft2 = "Лён ",
					value2 = "20 ",
					craft3 = "Материалы",
					value3 = "9 ",
					craft4 = "",
					value4 = "",
					price = "1000",
					chance = "1"
				},
				{
					name = "Повязка на шею",
					craft1 = "Хлопок ",
					value1 = "9 ",
					craft2 = "Лён ",
					value2 = "9 ",
					craft3 = "",
					value3 = "",
					craft4 = "",
					value4 = "",
					price = "1000",
					chance = "1"
				},
				{
					name = "Клюшка",
					craft1 = "Металл ",
					value1 = "40",
					craft2 = "Дрова ",
					value2 = "1",
					craft3 = "Материалы",
					value3 = "24",
					craft4 = "",
					value4 = "",
					price = "1000",
					chance = "1"
				},
				{
					name = "Бита",
					craft1 = "Камень",
					value1 = "30",
					craft2 = "Дрова",
					value2 = "10",
					craft3 = "Материалы",
					value3 = "10",
					craft4 = "",
					value4 = "",
					price = "1000",
					chance = "1"
				},
				{
					name = "Лопата",
					craft1 = "Камень",
					value1 = "26",
					craft2 = "Дрова",
					value2 = "3",
					craft3 = "Материалы",
					value3 = "2",
					craft4 = "",
					value4 = "",
					price = "1000",
					chance = "1"
				},
				{
					name = "Кий",
					craft1 = "Камень",
					value1 = "8",
					craft2 = "Дрова",
					value2 = "3",
					craft3 = "Металл",
					value3 = "4",
					craft4 = "",
					value4 = "",
					price = "1000",
					chance = "1"
				},
				{
					name = "Катана",
					craft1 = "Металл",
					value1 = "40",
					craft2 = "Материалы",
					value2 = "11",
					craft3 = "Камень",
					value3 = "12",
					craft4 = "Бронза",
					value4 = "3",
					price = "1000",
					chance = "1"
				},
				{
					name = "Трость",
					craft1 = "Металл",
					value1 = "14",
					craft2 = "Материалы",
					value2 = "15",
					craft3 = "Камень",
					value3 = "6",
					craft4 = "Серебро",
					value4 = "1",
					price = "1000",
					chance = "1"
				},
				{
					name = "Щит",
					craft1 = "Материалы",
					value1 = "80",
					craft2 = "Металл",
					value2 = "50",
					craft3 = "Балончик с краской",
					value3 = "2",
					craft4 = "Бронза",
					value4 = "3",
					price = "1000",
					chance = "1"
				},
				{
					name = "Кепка (Police)",
					craft1 = "Хлопок",
					value1 = "40",
					craft2 = "Лён",
					value2 = "30",
					craft3 = "Металл",
					value3 = "12",
					craft4 = "",
					value4 = "",
					price = "1000",
					chance = "1"
				},
				{
					name = "Кирка",
					craft1 = "Дрова",
					value1 = "2",
					craft2 = "Алюминий",
					value2 = "9",
					craft3 = "Бронза",
					value3 = "3",
					craft4 = "",
					value4 = "",
					price = "1000",
					chance = "1"
				},
				{
					name = "Грабли",
					craft1 = "Дрова",
					value1 = "2",
					craft2 = "Алюминий",
					value2 = "9",
					craft3 = "Бронза",
					value3 = "3",
					craft4 = "",
					value4 = "",
					price = "1000",
					chance = "1"
				},
				{
					name = "Амулет",
					craft1 = "Часть от амулета",
					value1 = "3",
					craft2 = "Серебро",
					value2 = "5",
					craft3 = "Золото",
					value3 = "5",
					craft4 = "",
					value4 = "",
					price = "1000",
					chance = "2"
				},
				{
					name = "Борода",
					craft1 = "Шкура оленя",
					value1 = "20",
					craft2 = "Лён",
					value2 = "50",
					craft3 = "",
					value3 = "",
					craft4 = "",
					value4 = "",
					price = "1000",
					chance = "1"
				},
				{
					name = "Мешок с мясом",
					craft1 = "Сырое мясо оленины",
					value1 = "30",
					craft2 = "Шкура оленя",
					value2 = "20",
					craft3 = "",
					value3 = "",
					craft4 = "",
					value4 = "",
					price = "1000",
					chance = "1"
				},

			}
	},



	{
		typee = "Одежда",
		list = {
			{
			name = "Police Officer (Ричи)\nid: 305, 304, 303",
			craft1 = "Хлопок",
			value1 = "25",
			craft2 = "Лён",
			value2 = "25",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "1000",
			chance = "1"
		  },
			{
			name = "BlackJack Dealer\nid: 171",
			craft1 = "Хлопок",
			value1 = "25",
			craft2 = "Лён",
			value2 = "25",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "1000",
			chance = "1"
		  },
			{
			name = "Hotdog\nChill Dog Vendor \nid: 168",
			craft1 = "Хлопок",
			value1 = "25",
			craft2 = "Лён",
			value2 = "25",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "1000",
			chance = "1"
		  },
			{
			name = "Construction Worker\nid: 260",
			craft1 = "Хлопок",
			value1 = "25",
			craft2 = "Лён",
			value2 = "25",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "1000",
			chance = "1"
		  },
			{
			name = "Stripper\nid: 257",
			craft1 = "Хлопок",
			value1 = "25",
			craft2 = "Лён",
			value2 = "25",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "1000",
			chance = "15"
		  },
			{
			name = "Ballas\nid: 103",
			craft1 = "Рваная бандана Ballas",
			value1 = "1",
			craft2 = "Рваная повязка Ballas",
			value2 = "1",
			craft3 = "Рваная фктболка Ballas",
			value3 = "1",
			craft4 = "Рваные штаны Ballas",
			value4 = "1",
			price = "50000",
			chance = "15"
		  },
			{
			name = "Grove Street Familes\nid: 105",
			craft1 = "Рваная бандана Grove",
			value1 = "1",
			craft2 = "Рваная повязка Grove",
			value2 = "1",
			craft3 = "Рваная фктболка Grove",
			value3 = "1",
			craft4 = "Рваные штаны Grove",
			value4 = "1",
			price = "50000",
			chance = "15"
		  },
			{
			name = "Varios Los Aztecas\nid: 114",
			craft1 = "Рваная бандана Aztecas",
			value1 = "1",
			craft2 = "Рваная повязка Aztecas",
			value2 = "1",
			craft3 = "Рваная фктболка Aztecas",
			value3 = "1",
			craft4 = "Рваные штаны Aztecas",
			value4 = "1",
			price = "50000",
			chance = "15"
		  },
			{
			name = "San Fierro Rifa\nid: 175",
			craft1 = "Рваная бандана Rifa",
			value1 = "1",
			craft2 = "Рваная повязка Rifa",
			value2 = "1",
			craft3 = "Рваная фктболка Rifa",
			value3 = "1",
			craft4 = "Рваные штаны Rifa",
			value4 = "1",
			price = "50000",
			chance = "15"
		  },
			{
			name = "Jeffery Martin/Cross\nid: 293",
			craft1 = "Рваная бандана Night Wolves",
			value1 = "1",
			craft2 = "Рваная повязка Night Wolves",
			value2 = "1",
			craft3 = "Рваная фктболка Night Wolves",
			value3 = "1",
			craft4 = "Рваные штаны Night Wolves",
			value4 = "1",
			price = "50000",
			chance = "15"
		  },
			{
			name = "Punk\nid: 181",
			craft1 = "Рваная бандана Warlock MC",
			value1 = "1",
			craft2 = "Рваная повязка Warlock MC",
			value2 = "1",
			craft3 = "Рваная фктболка Warlock MC",
			value3 = "1",
			craft4 = "Рваные штаны Warlock MC",
			value4 = "1",
			price = "50000",
			chance = "15"
		  },
			{
			name = "The Mafia\nid: 124",
			craft1 = "Рваная бандана La Cosa Nostra",
			value1 = "1",
			craft2 = "Рваная повязка La Cosa Nostra",
			value2 = "1",
			craft3 = "Рваная фктболка La Cosa Nostra",
			value3 = "1",
			craft4 = "Рваные штаны La Cosa Nostra",
			value4 = "1",
			price = "50000",
			chance = "15"
		  },
			{
			name = "Da Nang Boy\nid: 122",
			craft1 = "Рваная бандана Yakuza",
			value1 = "1",
			craft2 = "Рваная повязка Yakuza",
			value2 = "1",
			craft3 = "Рваная фктболка Yakuza",
			value3 = "1",
			craft4 = "Рваные штаны Yakuza",
			value4 = "1",
			price = "50000",
			chance = "15"
		  },
			{
			name = "The Russian Mafia\nid: 112",
			craft1 = "Рваная бандана Russian Mafia",
			value1 = "1",
			craft2 = "Рваная повязка Russian Mafia",
			value2 = "1",
			craft3 = "Рваная фктболка Russian Mafia",
			value3 = "1",
			craft4 = "Рваные штаны Russian Mafia",
			value4 = "1",
			price = "50000",
			chance = "15"
		  },

		}
	},
	{
		typee = "Химия",
		list = {
			{
			name = "Наркотик: Таблетка Адреналина",
			craft1 = "Наркотик",
			value1 = "2",
			craft2 = "Семена Наркотиков",
			value2 = "2",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "300",
			chance = "100"
		  },
			{
			name = "Аптечка",
			craft1 = "Наркотик",
			value1 = "1",
			craft2 = "",
			value2 = "",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "50",
			chance = "100"
		  },
		}
	},
	{
		typee = "Обработка",
		list = {
			{
			name = "Материалы",
			craft1 = "Металл",
			value1 = "5",
			craft2 = "",
			value2 = "",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "50",
			chance = "100"
			},
			{
			name = "Семейный талон",
			craft1 = "Дрова",
			value1 = "1",
			craft2 = "Бронза",
			value2 = "1",
			craft3 = "Лён",
			value3 = "3",
			craft4 = "",
			value4 = "",
			price = "50",
			chance = "100"
			},
			{
			name = "Бронзовая рулетка",
			craft1 = "Бронза",
			value1 = "5",
			craft2 = "",
			value2 = "",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "1000",
			chance = "50"
			},
			{
			name = "Серебряная рулетка",
			craft1 = "Серебро",
			value1 = "5",
			craft2 = "",
			value2 = "",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "1000",
			chance = "50"
			},
			{
			name = "Золотая рулетка",
			craft1 = "Золото",
			value1 = "5",
			craft2 = "",
			value2 = "",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "1000",
			chance = "50"
			},
			{
			name = "Алюминий",
			craft1 = "Металл",
			value1 = "3",
			craft2 = "",
			value2 = "",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "50",
			chance = "70"
			},
			{
			name = "Часть от амулета",
			craft1 = "Часть от яйца",
			value1 = "5",
			craft2 = "",
			value2 = "",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "1000",
			chance = "50"
			},
		}
	},
	{
		typee = "Телефон",
		list = {
			{
			name = "Samsung Galaxy S10 (Серебрянный)",
			craft1 = "Серебро",
			value1 = "10",
			craft2 = "Samsung Galaxy S10 (белый)",
			value2 = "1",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "200000",
			chance = "50"
			},
			{
			name = "Samsung Galaxy S10 (Золотой)",
			craft1 = "Золото",
			value1 = "10",
			craft2 = "Samsung Galaxy S10 (белый)",
			value2 = "1",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "200000",
			chance = "50"
			},
			{
			name = "Iphone X (Серебрянный)",
			craft1 = "Серебро",
			value1 = "10",
			craft2 = "Iphone X (белый)",
			value2 = "1",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "200000",
			chance = "50"
			},
			{
			name = "Iphone X (Золотой)",
			craft1 = "Золото",
			value1 = "10",
			craft2 = "Iphone X (белый)",
			value2 = "1",
			craft3 = "",
			value3 = "",
			craft4 = "",
			value4 = "",
			price = "200000",
			chance = "50"
			},
		}
	},
}

local items = {
	u8"Тёмная тема",
	u8"Синия тема",
	u8"Красная тема",
	u8"Голубая тема",
	u8"Зелёная тема",
	u8"Оранжевая тема"
}

local def = {
	settings = {
		theme = 3,
		key = 0,
		command = "crafth"
	},
}

local directIni = "KopnevScripts\\Craft Helper.ini"

local ini = inicfg.load(def, directIni)

local tema = imgui.ImInt(ini.settings.theme)
local command = imgui.ImBuffer(ini.settings.command, 32)
local keyy = imgui.ImInt(ini.settings.key)

function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
  	while not isSampAvailable() do wait(100) end
  	sampAddChatMessage('[Craft Helper] {FFFFFF}Скрипт загружен. Активация: {F1CB09}/'..ini.settings.command, 0xF1CB09)
		sampRegisterChatCommand(ini.settings.command, function() main_window.v = not main_window.v end)


		while true do
			wait(150)
			imgui.Process = main_window.v or settings_window.v

			if wasKeyPressed(keyy.v) then
				main_window.v = not main_window.v
			end

		end
end

local vkladki = {false}

local sel = -1
local sel1
local xxx = imgui.ImInt(1)

function imgui.OnDrawFrame()
	if ini.settings.theme == 0 then theme1() end
	if ini.settings.theme == 1 then theme2() end
	if ini.settings.theme == 2 then theme3() end
	if ini.settings.theme == 3 then theme4() end
	if ini.settings.theme == 4 then theme5() end
	if ini.settings.theme == 5 then theme6() end

	if settings_window.v then
		imgui.SetNextWindowSize(imgui.ImVec2(470, 275), imgui.Cond.FirstUseEver)
		imgui.Begin(u8'Craft Helper | Settings', settings_window, 2)
		imgui.NewLine() imgui.NewLine()
		imgui.SameLine(200)
		imgui.Text(u8'Настройки')
		imgui.NewLine() imgui.NewLine()
		imgui.SameLine(30) imgui.Text(u8'Выбор темы:   ') imgui.SameLine()
		imgui.PushItemWidth(250)
		if imgui.Combo('', tema, items, -1)then
			ini.settings.theme = tema.v
			inicfg.save(def, directIni)
		end imgui.PopItemWidth()
		imgui.NewLine() imgui.NewLine()
		imgui.SameLine(30) imgui.Text(u8'Команда:         ') imgui.SameLine()
		imgui.PushItemWidth(250) if imgui.InputText('##Com', command) then
			ini.settings.command = command.v
			inicfg.save(def, directIni)
		end imgui.PopItemWidth()
		imgui.NewLine() imgui.NewLine()
		imgui.SameLine(30) imgui.Text(u8'ID Клавиши:    ') imgui.SameLine()
		imgui.PushItemWidth(250) if imgui.InputInt('##id', keyy, 0) then
			ini.settings.key = keyy.v
			inicfg.save(def, directIni)
		end imgui.PopItemWidth()
		imgui.NewLine() imgui.NewLine() imgui.NewLine() imgui.NewLine() imgui.SameLine(360)
		if imgui.Button(u8'Сохранить', imgui.ImVec2(100, 25)) then reloadScripts() end
		imgui.End()
	end

	if main_window.v then
		imgui.SetNextWindowSize(imgui.ImVec2(470, 370), imgui.Cond.FirstUseEver)
		imgui.Begin(u8'Craft Helper', main_window, 64+imgui.WindowFlags.MenuBar)
		if imgui.BeginMenuBar() then
			if imgui.BeginMenu(u8'Настройки') then
				 if imgui.MenuItem(u8'Настройки') then settings_window.v = true end
				 if imgui.MenuItem(u8'Информация') then
				 	sampAddChatMessage('[BotVkCoin] {FFFFFF}Автор: Даниил Копнев.', 0xF1CB09)
				 	sampAddChatMessage('[BotVkCoin] {FFFFFF}Вк: vk.com/d.k8515', 0xF1CB09)
				 	sampAddChatMessage('[BotVkCoin] {FFFFFF}Специально для: Аризона | Полезные вещи', 0xF1CB09)
				 end
				imgui.EndMenu()
			end
			imgui.EndMenuBar()
		end


		for i, v in ipairs(craft) do
			if imgui.Button(u8(v['typee']), imgui.ImVec2(85, 25)) then
			mq()
			vkladki[1] = true
		  ss = i sel = -1 xxx = imgui.ImInt(1) end imgui.SameLine()

		end
		imgui.NewLine()
			imgui.Separator()

		imgui.BeginChild('left pane', imgui.ImVec2(150, 300), true)
		if vkladki[1] == true then
			for i, v in ipairs(craft[ss]['list']) do
				if imgui.Selectable(u8(v['name']), sel == i) then
					sel = i
				  sel1 = v
					xxx = imgui.ImInt(1)
				end
				if craft[ss]['typee'] == "Одежда" then imgui.NewLine() end
			end
		end
		imgui.EndChild()
		imgui.SameLine(180)

		if sel ~= -1 then
				imgui.BeginGroup()
				imgui.Text(u8(craft[ss]['typee'])..": "..u8(sel1['name']))
				imgui.NewLine() imgui.NewLine() imgui.Separator()
				imgui.Text(u8'Требования:')
					imgui.BeginChild('perm', imgui.ImVec2(250, 110), true)
					imgui.Columns(2, 'mycolumns')


					imgui.Text(u8'Предмет') imgui.NextColumn()
					imgui.Text(u8'Кол-во') imgui.NextColumn()
					imgui.Separator()
					if sel1['value1'] ~="" then v1 = sel1['value1'] * xxx.v else v1 = "" end
					if sel1['value2'] ~="" then v2 = sel1['value2'] * xxx.v else v2 = "" end
					if sel1['value3'] ~="" then v3 = sel1['value3'] * xxx.v else v3 = "" end
					if sel1['value4'] ~="" then v4 = sel1['value4'] * xxx.v else v4 = "" end
					if sel1['price'] ~="" then p = sel1['price'] * xxx.v else p = "" end
					imgui.Text(u8(sel1['craft1'])) imgui.NextColumn()
					imgui.Text(v1.."") imgui.NextColumn()
					imgui.Text(u8(sel1['craft2'])) imgui.NextColumn()
					imgui.Text(v2.."") imgui.NextColumn()
					imgui.Text(u8(sel1['craft3'])) imgui.NextColumn()
					imgui.Text(v3.."") imgui.NextColumn()
					imgui.Text(u8(sel1['craft4'])) imgui.NextColumn()
					imgui.Text(v4.."") imgui.NextColumn()

					imgui.EndChild()
					imgui.Text(u8'  Стоимость:') imgui.SameLine(125) imgui.Text(p.."$")
					imgui.Text(u8'  Шанс успеха:') imgui.SameLine(125) imgui.Text(sel1['chance'].."%")
					imgui.Text(u8'  Кол-во:') imgui.SameLine(125) imgui.PushItemWidth(100)  imgui.InputInt(u8'##x', xxx, 1) imgui.PopItemWidth()
				imgui.EndGroup()
		end


		imgui.End()
	end
end

function mq()
	for i = 0,1 do
			vkladki[i] = false
	end
end

function theme1()
		imgui.SwitchContext()
		local style = imgui.GetStyle()
		local Colors = style.Colors
		local ImVec4 = imgui.ImVec4
		local ImVec2 = imgui.ImVec2

			WindowPadding = ImVec2(15, 15)
		    WindowRounding = 5.0
		    FramePadding = ImVec2(5, 5)
		    FrameRounding = 4.0
		    ItemSpacing = ImVec2(12, 8)
		    ItemInnerSpacing = ImVec2(8, 6)
		    IndentSpacing = 25.0
		    ScrollbarSize = 15.0
		    ScrollbarRounding = 9.0
		    GrabMinSize = 5.0
		    GrabRounding = 3.0
				style.WindowTitleAlign = imgui.ImVec2(0.5, 0.84)

		    Colors[imgui.Col.Text] = ImVec4(0.80, 0.80, 0.83, 1.00)
		    Colors[imgui.Col.TextDisabled] = ImVec4(0.24, 0.23, 0.29, 1.00)
		    Colors[imgui.Col.WindowBg] = ImVec4(0.06, 0.05, 0.07, 1.00)
		    Colors[imgui.Col.ChildWindowBg] = ImVec4(0.07, 0.07, 0.09, 1.00)
		    Colors[imgui.Col.PopupBg] = ImVec4(0.07, 0.07, 0.09, 1.00)
		    Colors[imgui.Col.Border] = ImVec4(0.80, 0.80, 0.83, 0.88)
		    Colors[imgui.Col.BorderShadow] = ImVec4(0.92, 0.91, 0.88, 0.00)
		    Colors[imgui.Col.FrameBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
		    Colors[imgui.Col.FrameBgHovered] = ImVec4(0.24, 0.23, 0.29, 1.00)
		    Colors[imgui.Col.FrameBgActive] = ImVec4(0.56, 0.56, 0.58, 1.00)
		    Colors[imgui.Col.TitleBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
		    Colors[imgui.Col.TitleBgCollapsed] = ImVec4(1.00, 0.98, 0.95, 0.75)
		    Colors[imgui.Col.TitleBgActive] = ImVec4(0.07, 0.07, 0.09, 1.00)
		    Colors[imgui.Col.MenuBarBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
		    Colors[imgui.Col.ScrollbarBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
		    Colors[imgui.Col.ScrollbarGrab] = ImVec4(0.80, 0.80, 0.83, 0.31)
		    Colors[imgui.Col.ScrollbarGrabHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
		    Colors[imgui.Col.ScrollbarGrabActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
		    Colors[imgui.Col.ComboBg] = ImVec4(0.19, 0.18, 0.21, 1.00)
		    Colors[imgui.Col.CheckMark] = ImVec4(0.80, 0.80, 0.83, 0.31)
		    Colors[imgui.Col.SliderGrab] = ImVec4(0.80, 0.80, 0.83, 0.31)
		    Colors[imgui.Col.SliderGrabActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
		    Colors[imgui.Col.Button] = ImVec4(0.10, 0.09, 0.12, 1.00)
		    Colors[imgui.Col.ButtonHovered] = ImVec4(0.24, 0.23, 0.29, 1.00)
		    Colors[imgui.Col.ButtonActive] = ImVec4(0.56, 0.56, 0.58, 1.00)
		    Colors[imgui.Col.Header] = ImVec4(0.10, 0.09, 0.12, 1.00)
		    Colors[imgui.Col.HeaderHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
		    Colors[imgui.Col.HeaderActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
		    Colors[imgui.Col.ResizeGrip] = ImVec4(0.00, 0.00, 0.00, 0.00)
		    Colors[imgui.Col.ResizeGripHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
		    Colors[imgui.Col.ResizeGripActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
		    Colors[imgui.Col.CloseButton] = ImVec4(0.40, 0.39, 0.38, 0.16)
		    Colors[imgui.Col.CloseButtonHovered] = ImVec4(0.40, 0.39, 0.38, 0.39)
		    Colors[imgui.Col.CloseButtonActive] = ImVec4(0.40, 0.39, 0.38, 1.00)
		    Colors[imgui.Col.PlotLines] = ImVec4(0.40, 0.39, 0.38, 0.63)
		    Colors[imgui.Col.PlotLinesHovered] = ImVec4(0.25, 1.00, 0.00, 1.00)
		    Colors[imgui.Col.PlotHistogram] = ImVec4(0.40, 0.39, 0.38, 0.63)
		    Colors[imgui.Col.PlotHistogramHovered] = ImVec4(0.25, 1.00, 0.00, 1.00)
		    Colors[imgui.Col.TextSelectedBg] = ImVec4(0.25, 1.00, 0.00, 0.43)
		    Colors[imgui.Col.ModalWindowDarkening] = ImVec4(1.00, 0.98, 0.95, 0.73)
end

function theme2()
	imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4

    style.WindowRounding = 2.0
    style.WindowTitleAlign = imgui.ImVec2(0.5, 0.84)
    style.ChildWindowRounding = 2.0
    style.FrameRounding = 2.0
    style.ItemSpacing = imgui.ImVec2(5.0, 4.0)
    style.ScrollbarSize = 13.0
    style.ScrollbarRounding = 0
    style.GrabMinSize = 8.0
    style.GrabRounding = 1.0

    colors[clr.FrameBg]                = ImVec4(0.16, 0.29, 0.48, 0.54)
    colors[clr.FrameBgHovered]         = ImVec4(0.26, 0.59, 0.98, 0.40)
    colors[clr.FrameBgActive]          = ImVec4(0.26, 0.59, 0.98, 0.67)
    colors[clr.TitleBg]                = ImVec4(0.04, 0.04, 0.04, 1.00)
    colors[clr.TitleBgActive]          = ImVec4(0.16, 0.29, 0.48, 1.00)
    colors[clr.TitleBgCollapsed]       = ImVec4(0.00, 0.00, 0.00, 0.51)
    colors[clr.CheckMark]              = ImVec4(0.26, 0.59, 0.98, 1.00)
    colors[clr.SliderGrab]             = ImVec4(0.24, 0.52, 0.88, 1.00)
    colors[clr.SliderGrabActive]       = ImVec4(0.26, 0.59, 0.98, 1.00)
    colors[clr.Button]                 = ImVec4(0.26, 0.59, 0.98, 0.40)
    colors[clr.ButtonHovered]          = ImVec4(0.26, 0.59, 0.98, 1.00)
    colors[clr.ButtonActive]           = ImVec4(0.06, 0.53, 0.98, 1.00)
    colors[clr.Header]                 = ImVec4(0.26, 0.59, 0.98, 0.31)
    colors[clr.HeaderHovered]          = ImVec4(0.26, 0.59, 0.98, 0.80)
    colors[clr.HeaderActive]           = ImVec4(0.26, 0.59, 0.98, 1.00)
    colors[clr.Separator]              = colors[clr.Border]
    colors[clr.SeparatorHovered]       = ImVec4(0.26, 0.59, 0.98, 0.78)
    colors[clr.SeparatorActive]        = ImVec4(0.26, 0.59, 0.98, 1.00)
    colors[clr.ResizeGrip]             = ImVec4(0.26, 0.59, 0.98, 0.25)
    colors[clr.ResizeGripHovered]      = ImVec4(0.26, 0.59, 0.98, 0.67)
    colors[clr.ResizeGripActive]       = ImVec4(0.26, 0.59, 0.98, 0.95)
    colors[clr.TextSelectedBg]         = ImVec4(0.26, 0.59, 0.98, 0.35)
    colors[clr.Text]                   = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.TextDisabled]           = ImVec4(0.50, 0.50, 0.50, 1.00)
    colors[clr.WindowBg]               = ImVec4(0.06, 0.06, 0.06, 0.94)
    colors[clr.ChildWindowBg]          = ImVec4(1.00, 1.00, 1.00, 0.00)
    colors[clr.PopupBg]                = ImVec4(0.08, 0.08, 0.08, 0.94)
    colors[clr.ComboBg]                = colors[clr.PopupBg]
    colors[clr.Border]                 = ImVec4(0.43, 0.43, 0.50, 0.50)
    colors[clr.BorderShadow]           = ImVec4(0.00, 0.00, 0.00, 0.00)
    colors[clr.MenuBarBg]              = ImVec4(0.14, 0.14, 0.14, 1.00)
    colors[clr.ScrollbarBg]            = ImVec4(0.02, 0.02, 0.02, 0.53)
    colors[clr.ScrollbarGrab]          = ImVec4(0.31, 0.31, 0.31, 1.00)
    colors[clr.ScrollbarGrabHovered]   = ImVec4(0.41, 0.41, 0.41, 1.00)
    colors[clr.ScrollbarGrabActive]    = ImVec4(0.51, 0.51, 0.51, 1.00)
    colors[clr.CloseButton]            = ImVec4(0.41, 0.41, 0.41, 0.50)
    colors[clr.CloseButtonHovered]     = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.CloseButtonActive]      = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.PlotLines]              = ImVec4(0.61, 0.61, 0.61, 1.00)
    colors[clr.PlotLinesHovered]       = ImVec4(1.00, 0.43, 0.35, 1.00)
    colors[clr.PlotHistogram]          = ImVec4(0.90, 0.70, 0.00, 1.00)
    colors[clr.PlotHistogramHovered]   = ImVec4(1.00, 0.60, 0.00, 1.00)
    colors[clr.ModalWindowDarkening]   = ImVec4(0.80, 0.80, 0.80, 0.35)
end

function theme3()
    imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4

    style.WindowRounding = 2.0
    style.WindowTitleAlign = imgui.ImVec2(0.5, 0.84)
    style.ChildWindowRounding = 2.0
    style.FrameRounding = 2.0
    style.ItemSpacing = imgui.ImVec2(5.0, 4.0)
    style.ScrollbarSize = 13.0
    style.ScrollbarRounding = 0
    style.GrabMinSize = 8.0
    style.GrabRounding = 1.0

    colors[clr.FrameBg]                = ImVec4(0.48, 0.16, 0.16, 0.54)
    colors[clr.FrameBgHovered]         = ImVec4(0.98, 0.26, 0.26, 0.40)
    colors[clr.FrameBgActive]          = ImVec4(0.98, 0.26, 0.26, 0.67)
    colors[clr.TitleBg]                = ImVec4(0.04, 0.04, 0.04, 1.00)
    colors[clr.TitleBgActive]          = ImVec4(0.48, 0.16, 0.16, 1.00)
    colors[clr.TitleBgCollapsed]       = ImVec4(0.00, 0.00, 0.00, 0.51)
    colors[clr.CheckMark]              = ImVec4(0.98, 0.26, 0.26, 1.00)
    colors[clr.SliderGrab]             = ImVec4(0.88, 0.26, 0.24, 1.00)
    colors[clr.SliderGrabActive]       = ImVec4(0.98, 0.26, 0.26, 1.00)
    colors[clr.Button]                 = ImVec4(0.98, 0.26, 0.26, 0.40)
    colors[clr.ButtonHovered]          = ImVec4(0.98, 0.26, 0.26, 1.00)
    colors[clr.ButtonActive]           = ImVec4(0.98, 0.06, 0.06, 1.00)
    colors[clr.Header]                 = ImVec4(0.98, 0.26, 0.26, 0.31)
    colors[clr.HeaderHovered]          = ImVec4(0.98, 0.26, 0.26, 0.80)
    colors[clr.HeaderActive]           = ImVec4(0.98, 0.26, 0.26, 1.00)
    colors[clr.Separator]              = colors[clr.Border]
    colors[clr.SeparatorHovered]       = ImVec4(0.75, 0.10, 0.10, 0.78)
    colors[clr.SeparatorActive]        = ImVec4(0.75, 0.10, 0.10, 1.00)
    colors[clr.ResizeGrip]             = ImVec4(0.98, 0.26, 0.26, 0.25)
    colors[clr.ResizeGripHovered]      = ImVec4(0.98, 0.26, 0.26, 0.67)
    colors[clr.ResizeGripActive]       = ImVec4(0.98, 0.26, 0.26, 0.95)
    colors[clr.TextSelectedBg]         = ImVec4(0.98, 0.26, 0.26, 0.35)
    colors[clr.Text]                   = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.TextDisabled]           = ImVec4(0.50, 0.50, 0.50, 1.00)
    colors[clr.WindowBg]               = ImVec4(0.06, 0.06, 0.06, 0.94)
    colors[clr.ChildWindowBg]          = ImVec4(1.00, 1.00, 1.00, 0.00)
    colors[clr.PopupBg]                = ImVec4(0.08, 0.08, 0.08, 0.94)
    colors[clr.ComboBg]                = colors[clr.PopupBg]
    colors[clr.Border]                 = ImVec4(0.43, 0.43, 0.50, 0.50)
    colors[clr.BorderShadow]           = ImVec4(0.00, 0.00, 0.00, 0.00)
    colors[clr.MenuBarBg]              = ImVec4(0.14, 0.14, 0.14, 1.00)
    colors[clr.ScrollbarBg]            = ImVec4(0.02, 0.02, 0.02, 0.53)
    colors[clr.ScrollbarGrab]          = ImVec4(0.31, 0.31, 0.31, 1.00)
    colors[clr.ScrollbarGrabHovered]   = ImVec4(0.41, 0.41, 0.41, 1.00)
    colors[clr.ScrollbarGrabActive]    = ImVec4(0.51, 0.51, 0.51, 1.00)
    colors[clr.CloseButton]            = ImVec4(0.41, 0.41, 0.41, 0.50)
    colors[clr.CloseButtonHovered]     = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.CloseButtonActive]      = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.PlotLines]              = ImVec4(0.61, 0.61, 0.61, 1.00)
    colors[clr.PlotLinesHovered]       = ImVec4(1.00, 0.43, 0.35, 1.00)
    colors[clr.PlotHistogram]          = ImVec4(0.90, 0.70, 0.00, 1.00)
    colors[clr.PlotHistogramHovered]   = ImVec4(1.00, 0.60, 0.00, 1.00)
    colors[clr.ModalWindowDarkening]   = ImVec4(0.80, 0.80, 0.80, 0.35)
end

function theme4()
    imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4

    style.WindowRounding = 2.0
    style.WindowTitleAlign = imgui.ImVec2(0.5, 0.84)
    style.ChildWindowRounding = 2.0
    style.FrameRounding = 2.0
    style.ItemSpacing = imgui.ImVec2(5.0, 4.0)
    style.ScrollbarSize = 13.0
    style.ScrollbarRounding = 0
    style.GrabMinSize = 8.0
    style.GrabRounding = 1.0

    colors[clr.FrameBg]                = ImVec4(0.16, 0.48, 0.42, 0.54)
    colors[clr.FrameBgHovered]         = ImVec4(0.26, 0.98, 0.85, 0.40)
    colors[clr.FrameBgActive]          = ImVec4(0.26, 0.98, 0.85, 0.67)
    colors[clr.TitleBg]                = ImVec4(0.04, 0.04, 0.04, 1.00)
    colors[clr.TitleBgActive]          = ImVec4(0.16, 0.48, 0.42, 1.00)
    colors[clr.TitleBgCollapsed]       = ImVec4(0.00, 0.00, 0.00, 0.51)
    colors[clr.CheckMark]              = ImVec4(0.26, 0.98, 0.85, 1.00)
    colors[clr.SliderGrab]             = ImVec4(0.24, 0.88, 0.77, 1.00)
    colors[clr.SliderGrabActive]       = ImVec4(0.26, 0.98, 0.85, 1.00)
    colors[clr.Button]                 = ImVec4(0.26, 0.98, 0.85, 0.40)
    colors[clr.ButtonHovered]          = ImVec4(0.26, 0.98, 0.85, 1.00)
    colors[clr.ButtonActive]           = ImVec4(0.06, 0.98, 0.82, 1.00)
    colors[clr.Header]                 = ImVec4(0.26, 0.98, 0.85, 0.31)
    colors[clr.HeaderHovered]          = ImVec4(0.26, 0.98, 0.85, 0.80)
    colors[clr.HeaderActive]           = ImVec4(0.26, 0.98, 0.85, 1.00)
    colors[clr.Separator]              = colors[clr.Border]
    colors[clr.SeparatorHovered]       = ImVec4(0.10, 0.75, 0.63, 0.78)
    colors[clr.SeparatorActive]        = ImVec4(0.10, 0.75, 0.63, 1.00)
    colors[clr.ResizeGrip]             = ImVec4(0.26, 0.98, 0.85, 0.25)
    colors[clr.ResizeGripHovered]      = ImVec4(0.26, 0.98, 0.85, 0.67)
    colors[clr.ResizeGripActive]       = ImVec4(0.26, 0.98, 0.85, 0.95)
    colors[clr.PlotLines]              = ImVec4(0.61, 0.61, 0.61, 1.00)
    colors[clr.PlotLinesHovered]       = ImVec4(1.00, 0.81, 0.35, 1.00)
    colors[clr.TextSelectedBg]         = ImVec4(0.26, 0.98, 0.85, 0.35)
    colors[clr.Text]                   = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.TextDisabled]           = ImVec4(0.50, 0.50, 0.50, 1.00)
    colors[clr.WindowBg]               = ImVec4(0.06, 0.06, 0.06, 0.94)
    colors[clr.ChildWindowBg]          = ImVec4(1.00, 1.00, 1.00, 0.00)
    colors[clr.PopupBg]                = ImVec4(0.08, 0.08, 0.08, 0.94)
    colors[clr.ComboBg]                = colors[clr.PopupBg]
    colors[clr.Border]                 = ImVec4(0.43, 0.43, 0.50, 0.50)
    colors[clr.BorderShadow]           = ImVec4(0.00, 0.00, 0.00, 0.00)
    colors[clr.MenuBarBg]              = ImVec4(0.14, 0.14, 0.14, 1.00)
    colors[clr.ScrollbarBg]            = ImVec4(0.02, 0.02, 0.02, 0.53)
    colors[clr.ScrollbarGrab]          = ImVec4(0.31, 0.31, 0.31, 1.00)
    colors[clr.ScrollbarGrabHovered]   = ImVec4(0.41, 0.41, 0.41, 1.00)
    colors[clr.ScrollbarGrabActive]    = ImVec4(0.51, 0.51, 0.51, 1.00)
    colors[clr.CloseButton]            = ImVec4(0.41, 0.41, 0.41, 0.50)
    colors[clr.CloseButtonHovered]     = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.CloseButtonActive]      = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.PlotHistogram]          = ImVec4(0.90, 0.70, 0.00, 1.00)
    colors[clr.PlotHistogramHovered]   = ImVec4(1.00, 0.60, 0.00, 1.00)
    colors[clr.ModalWindowDarkening]   = ImVec4(0.80, 0.80, 0.80, 0.35)
end

function theme5()
	local style = imgui.GetStyle()
  local clr = imgui.Col
  local ImVec4 = imgui.ImVec4

	style.WindowTitleAlign = imgui.ImVec2(0.5, 0.84)
  style.Alpha = 1.0
  style.Colors[clr.Text] = ImVec4(1.000, 1.000, 1.000, 1.000)
  style.Colors[clr.TextDisabled] = ImVec4(0.000, 0.543, 0.983, 1.000)
  style.Colors[clr.WindowBg] = ImVec4(0.000, 0.000, 0.000, 0.895)
  style.Colors[clr.ChildWindowBg] = ImVec4(0.00, 0.00, 0.00, 0.00)
  style.Colors[clr.PopupBg] = ImVec4(0.07, 0.07, 0.09, 1.00)
  style.Colors[clr.Border] = ImVec4(0.184, 0.878, 0.000, 0.500)
  style.Colors[clr.BorderShadow] = ImVec4(1.00, 1.00, 1.00, 0.10)
  style.Colors[clr.TitleBg] = ImVec4(0.026, 0.597, 0.000, 1.000)
  style.Colors[clr.TitleBgCollapsed] = ImVec4(0.099, 0.315, 0.000, 0.000)
  style.Colors[clr.TitleBgActive] = ImVec4(0.026, 0.597, 0.000, 1.000)
  style.Colors[clr.MenuBarBg] = ImVec4(0.86, 0.86, 0.86, 1.00)
  style.Colors[clr.ScrollbarBg] = ImVec4(0.000, 0.000, 0.000, 0.801)
  style.Colors[clr.ScrollbarGrab] = ImVec4(0.238, 0.238, 0.238, 1.000)
  style.Colors[clr.ScrollbarGrabHovered] = ImVec4(0.238, 0.238, 0.238, 1.000)
  style.Colors[clr.ScrollbarGrabActive] = ImVec4(0.004, 0.381, 0.000, 1.000)
  style.Colors[clr.CheckMark] = ImVec4(0.009, 0.845, 0.000, 1.000)
  style.Colors[clr.SliderGrab] = ImVec4(0.139, 0.508, 0.000, 1.000)
  style.Colors[clr.SliderGrabActive] = ImVec4(0.139, 0.508, 0.000, 1.000)
  style.Colors[clr.Button] = ImVec4(0.000, 0.000, 0.000, 0.400)
  style.Colors[clr.ButtonHovered] = ImVec4(0.000, 0.619, 0.014, 1.000)
  style.Colors[clr.ButtonActive] = ImVec4(0.06, 0.53, 0.98, 1.00)
  style.Colors[clr.Header] = ImVec4(0.26, 0.59, 0.98, 0.31)
  style.Colors[clr.HeaderHovered] = ImVec4(0.26, 0.59, 0.98, 0.80)
  style.Colors[clr.HeaderActive] = ImVec4(0.26, 0.59, 0.98, 1.00)
  style.Colors[clr.ResizeGrip] = ImVec4(0.000, 1.000, 0.221, 0.597)
  style.Colors[clr.ResizeGripHovered] = ImVec4(0.26, 0.59, 0.98, 0.67)
  style.Colors[clr.ResizeGripActive] = ImVec4(0.26, 0.59, 0.98, 0.95)
  style.Colors[clr.PlotLines] = ImVec4(0.39, 0.39, 0.39, 1.00)
  style.Colors[clr.PlotLinesHovered] = ImVec4(1.00, 0.43, 0.35, 1.00)
  style.Colors[clr.PlotHistogram] = ImVec4(0.90, 0.70, 0.00, 1.00)
  style.Colors[clr.PlotHistogramHovered] = ImVec4(1.00, 0.60, 0.00, 1.00)
  style.Colors[clr.TextSelectedBg] = ImVec4(0.26, 0.59, 0.98, 0.35)
  style.Colors[clr.ModalWindowDarkening] = ImVec4(0.20, 0.20, 0.20, 0.35)

  style.ScrollbarSize = 16.0
  style.GrabMinSize = 8.0
  style.WindowRounding = 0.0

  style.AntiAliasedLines = true
end

function theme6()
	imgui.SwitchContext()
	local style = imgui.GetStyle()
	local colors = style.Colors
	local clr = imgui.Col
	local ImVec4 = imgui.ImVec4
	local ImVec2 = imgui.ImVec2

	style.WindowRounding = 2.0
	style.WindowTitleAlign = imgui.ImVec2(0.5, 0.84)
	style.ChildWindowRounding = 2.0
	style.FrameRounding = 2.0
	style.ItemSpacing = imgui.ImVec2(5.0, 4.0)
	style.ScrollbarSize = 13.0
	style.ScrollbarRounding = 0
	style.GrabMinSize = 8.0
	style.GrabRounding = 1.0

	colors[clr.Text] = ImVec4(0.80, 0.80, 0.83, 1.00)
	colors[clr.TextDisabled] = ImVec4(0.24, 0.23, 0.29, 1.00)
	colors[clr.WindowBg] = ImVec4(0.06, 0.05, 0.07, 1.00)
	colors[clr.ChildWindowBg] = ImVec4(0.07, 0.07, 0.09, 1.00)
	colors[clr.PopupBg] = ImVec4(0.07, 0.07, 0.09, 1.00)
	colors[clr.Border] = ImVec4(0.80, 0.80, 0.83, 0.88)
	colors[clr.BorderShadow] = ImVec4(0.92, 0.91, 0.88, 0.00)
	colors[clr.FrameBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
	colors[clr.FrameBgHovered] = ImVec4(0.24, 0.23, 0.29, 1.00)
	colors[clr.FrameBgActive] = ImVec4(0.56, 0.56, 0.58, 1.00)
	colors[clr.TitleBg] = ImVec4(0.76, 0.31, 0.00, 1.00)
	colors[clr.TitleBgCollapsed] = ImVec4(1.00, 0.98, 0.95, 0.75)
	colors[clr.TitleBgActive] = ImVec4(0.80, 0.33, 0.00, 1.00)
	colors[clr.MenuBarBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
	colors[clr.ScrollbarBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
	colors[clr.ScrollbarGrab] = ImVec4(0.80, 0.80, 0.83, 0.31)
	colors[clr.ScrollbarGrabHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
	colors[clr.ScrollbarGrabActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
	colors[clr.ComboBg] = ImVec4(0.19, 0.18, 0.21, 1.00)
	colors[clr.CheckMark] = ImVec4(1.00, 0.42, 0.00, 0.53)
	colors[clr.SliderGrab] = ImVec4(1.00, 0.42, 0.00, 0.53)
	colors[clr.SliderGrabActive] = ImVec4(1.00, 0.42, 0.00, 1.00)
	colors[clr.Button] = ImVec4(0.10, 0.09, 0.12, 1.00)
	colors[clr.ButtonHovered] = ImVec4(0.24, 0.23, 0.29, 1.00)
	colors[clr.ButtonActive] = ImVec4(0.56, 0.56, 0.58, 1.00)
	colors[clr.Header] = ImVec4(0.10, 0.09, 0.12, 1.00)
	colors[clr.HeaderHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
	colors[clr.HeaderActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
	colors[clr.ResizeGrip] = ImVec4(0.00, 0.00, 0.00, 0.00)
	colors[clr.ResizeGripHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
	colors[clr.ResizeGripActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
	colors[clr.CloseButton] = ImVec4(0.40, 0.39, 0.38, 0.16)
	colors[clr.CloseButtonHovered] = ImVec4(0.40, 0.39, 0.38, 0.39)
	colors[clr.CloseButtonActive] = ImVec4(0.40, 0.39, 0.38, 1.00)
	colors[clr.PlotLines] = ImVec4(0.40, 0.39, 0.38, 0.63)
	colors[clr.PlotLinesHovered] = ImVec4(0.25, 1.00, 0.00, 1.00)
	colors[clr.PlotHistogram] = ImVec4(0.40, 0.39, 0.38, 0.63)
	colors[clr.PlotHistogramHovered] = ImVec4(0.25, 1.00, 0.00, 1.00)
	colors[clr.TextSelectedBg] = ImVec4(0.25, 1.00, 0.00, 0.43)
	colors[clr.ModalWindowDarkening] = ImVec4(1.00, 0.98, 0.95, 0.73)
end
