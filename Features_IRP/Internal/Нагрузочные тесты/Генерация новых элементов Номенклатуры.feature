#language: ru

@tree

Функционал: сгенерировать новых элементов справочника Номенклатура

Как Тестировщик я хочу
создавать тестовый набор данных
чтобы проводить нагрузочное тестирование


Сценарий: генерация тестовых элементов справочника Номенклатура
	И Я запоминаю значение выражения '1' в переменную "НомерШага"
	И я делаю 10 раз
		И Я запоминаю значение выражения '$НомерШага$ + 1' в переменную "НомерШага"
		И Я запоминаю значение выражения '"Номенклатура_" + $НомерШага$' в переменную "ЭлементНоменклатуры"
		И Я запоминаю значение выражения 'StrReplace(New UUID, "-", "")' в переменную "NewUUID"
		И Я запоминаю значение выражения '"e1cib/data/Catalog.Items?ref=" + $NewUUID$' в переменную "NewRef"
		И я проверяю или создаю для справочника "Items" объекты:
			| 'Ref'    | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor' | 'ItemID' | 'PackageUnit' | 'Description_en' | 'Description_hash' | 'Description_ru'        | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
			| $NewRef$ | 'False'        |        | 'e1cib/data/Catalog.ItemTypes?ref=81490cc47a17116911eceff25c7dec8b' | 'e1cib/data/Catalog.Units?ref=81490cc47a17116911eceff25c7dec8c' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | ''       | ''       | ''            | ''               | ''                 | '$ЭлементНоменклатуры$' | ''               |          |          |          |          |         |
