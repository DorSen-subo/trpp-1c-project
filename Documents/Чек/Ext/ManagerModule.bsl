﻿
Процедура Печать(ТабДок, Ссылка) Экспорт
	//{{_КОНСТРУКТОР_ПЕЧАТИ(Печать)
	Макет = Документы.Чек.ПолучитьМакет("Печать");
	Запрос = Новый Запрос;
	Запрос.Текст =
	"ВЫБРАТЬ
	|	Чек.Дата,
	|	Чек.ИтоговаяСуммаЗаказа,
	|	Чек.Номер,
	|	Чек.Официант,
	|	Чек.Заказ.(
	|		Название,
	|		Количество,
	|		ЦенаЗаЕд,
	|		Сумма
	|	)
	|ИЗ
	|	Документ.Чек КАК Чек
	|ГДЕ
	|	Чек.Ссылка В (&Ссылка)";
	Запрос.Параметры.Вставить("Ссылка", Ссылка);
	Выборка = Запрос.Выполнить().Выбрать();

	ОбластьЗаголовок = Макет.ПолучитьОбласть("Заголовок");
	Шапка = Макет.ПолучитьОбласть("Шапка");
	ОбластьЗаказШапка = Макет.ПолучитьОбласть("ЗаказШапка");
	ОбластьЗаказ = Макет.ПолучитьОбласть("Заказ");
	ТабДок.Очистить();

	ВставлятьРазделительСтраниц = Ложь;
	Пока Выборка.Следующий() Цикл
		Если ВставлятьРазделительСтраниц Тогда
			ТабДок.ВывестиГоризонтальныйРазделительСтраниц();
		КонецЕсли;

		ТабДок.Вывести(ОбластьЗаголовок);

		Шапка.Параметры.Заполнить(Выборка);
		ТабДок.Вывести(Шапка, Выборка.Уровень());

		ТабДок.Вывести(ОбластьЗаказШапка);
		ВыборкаЗаказ = Выборка.Заказ.Выбрать();
		Пока ВыборкаЗаказ.Следующий() Цикл
			ОбластьЗаказ.Параметры.Заполнить(ВыборкаЗаказ);
			ТабДок.Вывести(ОбластьЗаказ, ВыборкаЗаказ.Уровень());
		КонецЦикла;

		ВставлятьРазделительСтраниц = Истина;
	КонецЦикла;
	//}}
КонецПроцедуры
