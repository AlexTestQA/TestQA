﻿#language: ru

@tree

Функционал: проверка прикрепления картинок к Товару

Как Менеджер я хочу
добавить картинки к товарам
чтобы можно было видеть как выглядит товар

Контекст: 
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	
//Сценарий: подготовительный (добавление картинок)
//	Когда экспорт основных данных
//	Когда экспорт настроек картинок
//	И я закрываю TestClient "Этот клиент"	
//	И Я устанавливаю в базу расширение "IRP_TestExtension" из каталога "$КаталогПроекта$\Additional\IRP_TestExtension.cfe"
//	И я подключаю профиль TestClient "Этот клиент"
	
	

Сценарий: проверка добавления картинки
	Дано Я открываю навигационную ссылку "e1cib/data/Catalog.Items?ref=b762b13668d0905011eb76684b9f687d"
	И я выбираю файл "$КаталогПроекта$\Files\itempicture1.png"
	И я делаю клик по элементу клиента тестирования '+' '' UI Automation
	И я нажимаю на кнопку с именем 'update_slider'
	И я закрываю все окна клиентского приложения
		

