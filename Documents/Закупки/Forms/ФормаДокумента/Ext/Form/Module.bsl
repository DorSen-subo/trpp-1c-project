﻿
&НаКлиенте
Процедура ЗакупкаКоличествоПриИзменении(Элемент)
	ТаблицаЗакупка=Элементы.Закупка.ТекущиеДанные;
	ТаблицаЗакупка.Сумма=ТаблицаЗакупка.Количество*ТаблицаЗакупка.ЦенаЗаЕд;
	Объект.ИтоговаяСумма = Объект.Закупка.Итог("Сумма")
КонецПроцедуры

&НаКлиенте
Процедура ЗакупкаСуммаПриИзменении(Элемент)
	ТаблицаЗакупка=Элементы.Закупка.ТекущиеДанные;
	ТаблицаЗакупка.Сумма=ТаблицаЗакупка.Количество*ТаблицаЗакупка.ЦенаЗаЕд;
	Объект.ИтоговаяСумма = Объект.Закупка.Итог("Сумма")
КонецПроцедуры

&НаКлиенте
Процедура ЗакупкаЦенаЗаЕдПриИзменении(Элемент)
	ТаблицаЗакупка=Элементы.Закупка.ТекущиеДанные;
	ТаблицаЗакупка.Сумма=ТаблицаЗакупка.Количество*ТаблицаЗакупка.ЦенаЗаЕд;
	Объект.ИтоговаяСумма = Объект.Закупка.Итог("Сумма")
КонецПроцедуры


&НаКлиенте
Процедура ЗакупкаПриИзменении(Элемент)
	Объект.ИтоговаяСумма = Объект.Закупка.Итог("Сумма")
КонецПроцедуры

