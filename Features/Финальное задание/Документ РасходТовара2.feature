﻿#language: ru

@tree

Функционал: Проверка заполнения, движения и печати документа РасходТовара

Как Менеджер я хочу
проводить расход товара и печатать об этом отчет 
чтобы корректно вести учет торвара на складе

Контекст: 
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Проверка правильности заполнения полей нового документа и его сохранения
* Открытие новой формы
	И В командном интерфейсе я выбираю 'Продажи' 'Продажи'
	Тогда открылось окно 'Продажи товара'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Продажа товара (создание)'
* Проверка наличия полей для ввода
	И элемент формы с именем "Номер" присутствует на форме
	И элемент формы с именем "Дата" присутствует на форме
	И элемент формы с именем "Организация" присутствует на форме
	И элемент формы с именем "Склад" присутствует на форме
	И элемент формы с именем "Покупатель" присутствует на форме
	И элемент формы с именем "ВидЦен" присутствует на форме
	И элемент формы с именем "ТоварыИтогКоличество" присутствует на форме
	И элемент формы с именем "ТоварыИтогСумма" присутствует на форме
	И элемент формы с именем "Товары" присутствует на форме
* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Попов Б.В. ИЧП '
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
* Заполнение табличной части и проверка суммы по товарам
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю по строке 'VekoNT02'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '500,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	Тогда в таблице "Товары" поле с именем "ТоварыСумма" имеет значение "5 000,00"
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю по строке 'Торт'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '200,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	Тогда в таблице "Товары" поле с именем "ТоварыСумма" имеет значение "1 000,00"
* Проверка итогового количества и суммы
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '15'
	И элемент формы с именем "ТоварыИтогСумма" стал равен '6 000'

	И я закрываю все окна клиентского приложения