# Шевляков Фёдор - Приложение для составления армий в настольной игре Warhammer 40000

# Пользовательские сценарии

### Группа: 10И2

### Email: [shevl.fs@gmail.com](mailto:shevl.fs@gmail.com)

### Telegram: @shevlfs

### [ Сценарий 1 - Регистрация пользователя ]

1. Пользователь вводит адрес электронной почты, через который будет производиться вход в систему
2. Пользователь вводит пароль, с которым он будет заходить в систему
3. Если данная почта уже существует в системе, то пользователю сообщается об этом
4. Если пароль содержит менее 6 символов, система сообщает, что пароль должен быть от 6 до 30 символов и пользователь должен придумать новый пароль
5. Если введённый адрес электронной почты не соответствует формату, то система выводит сообщение об ошибке и просит ввести адрес ещё раз
6. Если все введённые данные соответствуют требованиям регистрации, то система отправляет на почту письмо для подтверждения почты
7. После подтверждения имейла система приветствует пользователя и переходит в главное меню
9. Если пользователь уже зарегистрирован то он может войти через свой имейл и пароль
10. Запускается Сценарий 2 - Главное меню

### [ Сценарий 2 - Главное меню ]

1. Приложение загружает информацию о пользователе из бэкэнда
2. Если у пользователя нету ни одной армии, то система предлагает создать её
3. Если “Да”, то запускается Сценарий 3 - Создание Армии
4. Если “Нет”, то запускается само главное меню
5. На экране изображены созданные данным пользователем армии
6. Изображена кнопка создания армии => запускается Сценарий 3 - Создание Армии
7. Изображена кнопка для перехода в настройки => запускается Сценарий 4 - Настройки
8. На каждую армию можно нажать, при нажатии откроется меню просмотра конкретной армии => запускается Сценарий 5 - Просмотр Армии

### [ Сценарий 3 - Создание армии ]

1. Перед пользователем появляется список фракций доступных для игры в последней редакции Warhammer 40k, загруженный из json-файла.
2. После выбора фракции, пользователю предлагается, выбрать нужное количество очков для армии(target)
3. Далее, пользователю предлагается выбрать тип подразделения данной армии, список подразделений также загружается из json-файла.
4. Затем перед пользователем появляется список юнитов выбранной фракции, также загруженный из json-файла.
5. Причем, наверху находятся юниты, которые есть в коллекции моделей пользователя
6. Пользователь может выбрать количество каждого юнита
7. При добавлении юнита в армию обновляется текущее количество очков
8. Если текущее количество очков больше цели, то тогда пользователю предлагается изменить свою армию для того, чтобы уложиться в цель.
9. Затем перед пользователем предстает окно, которое прелагает добавить дополнительное снаряжение юнитам
10. Если “Да” - запускается Сценарий 6 - Добавление доп. снаряжения
11. Если “Нет” - запускается Сценарий 2 - Главное меню

### [ Сценарий 4 - Настройки.  Cоздание, изменение коллекции ]

1. Перед пользователем появляется меню настроек
2. Есть кнопка выхода из приложения => запускается Сценарий 1 - Регистрация пользователя
3. Есть кнопка для обновления армий из базы данных
4. В дальнейшем,  при расширении приложения здесь также будет возможность выбора редакции книги правил
5. Помимо этого, есть кнопка для создания коллекции моделей и кнопка для редактирования коллекции моделей
6. При входе в меню для создания коллекции перед пользователем предстает список фракций, загруженный из json-файла
7. Затем перед пользователем появляется список юнитов выбранной фракции,  также загруженный из json-файла
8. Пользователь может выбрать какие юниты этой фракции есть у него в коллекции.
9. После сохранения коллекции в базу данных, перед пользователем снова появляется меню настроек.
10. Пользователь также может просто изменить уже существующую коллекцию, нажав на соответствующую кнопку.
11. Перед пользователем снова появится список юнитов выбранной фракции,  также загруженный из json-файла.
12. После сохранений изменений в базу данных приложение снова вернет пользователя в меню настроек.

### [ Сценарий 5 - Просмотр армии ]

1. Перед пользователем появляется краткая информация об армии (фракция, количество очков)
2. Также есть кнопка для изменения конкретной армии => запускается Сценарий 7 - изменение армии
3. Помимо этого изображен список всех юнитов в этой армии и краткая информация о каждом из них
4. Рядом с каждым юнитом есть кнопка для добавления доп. снаряжения => запускается Сценарий 6 - Добавление доп. снаряжения
5. Для просмотра более детальной информации об армии есть отдельная кнопка
6. При переходе в детальный режим просмотра информации об армии перед пользователем открвается окно с детальной информацией о каждом юните
7. Также под каждым юнитом изображена таблица со статистикой о нем

### [ Сценарий 6 - Добавление доп. снаряжения ]

1. Если данное меню вызвано сразу после создания армии то тогда, перед пользователем появляется список всех юнитов в армии
2. Тогда перед пользователем появляется возможность выбрать доп. снаряжение, если это возможно для конкретного юнита
3. Если же это меню вызвано из просмотра армии, то тогда показывается лишь один юнит на котором можно изменить снаряжение
4. Если же выбранный юнит не поддерживает доп. снаряжение, тогда появляется предупреждение об этом
5. Дополнительное снаряжение и опции изображены в виде чек-боксов
6. Помимо этого, в данном меню также изображено текущее количество очков
7. При достижении границы появляется предупреждение об этом
8. После сохранения изменений в базу данных запускается Сценарий 5 - Просмотр армии

### [ Сценарий 7 - Изменение армии ]

1. Перед пользователем появлется список возможных полей для изменения (фракция, юниты, количество очков, тип подразделения)
2. Если пользователь изменяет фракцию, то по факту он и изменяет юнитов в своей армии, то есть после выбора фракции будет запущено изменение юнитов
3. Если пользователь изменяет фракцию, то тогда перед ним также показывается список доступных, загруженный из json-файла
4. Если пользователь изменяет юнитов, то тогда перед ним появляется список юнитов конкретной фракции, загруженный из json-файла
5. При изменении юнитов также показывается текущее количество очков, которое выдаст предупреждение при его пересечении
6. Если пользователь изменяет количество очков, то перед пользователем показывается окно в котором пользователь может ввести новое количество очков
7. Если пользователь изменяет тип подразделения, то перед пользователем показывается окно в котором предложены возможные типы подразделения, загруженные из json-файла
8. Все сохраненные изменения загружаются в базу данных и запускается Сценарий 5 - Просмотр армии
