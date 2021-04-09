# Sharing Distribution Certificates

Для developer аккаунта (App Store) есть ограничение на количество Distribution сертификатов - их не может быть более **трех**. Если необходимо использовать один и тот же Distribution сертификат на нескольких компьютерах (при этом разработчики могут использовать свои аккаунты), то необходимо расшарить Distribution сертификат на несколько машин.

### На компьютере с установленным сертификатом:

1. Открыть **Keychain Access (Связка ключей)**.

2. Выбрать **Мои сертификаты (My Certificates)**.

3. Выбрать **Distribution-сертификат**, который необходимо экспортировать, раскрыть его и выделить как сам сертификат, так и ключ:

   ![select-two](Sharing%20Distribution%20Certificates.assets/select-two.png)

4. Нажать правой кнопкой мыши и выбрать **Экспортировать объектов: 2 (Export 2 items)**:

   ![export](Sharing%20Distribution%20Certificates.assets/export.png)

5. Сохранить `p12` файл:

   ![p12-file](Sharing%20Distribution%20Certificates.assets/p12-file.png)

6. *(Необязательно)* Можно задать пароль, который будет затребован при установке сертификата на другой компьютер, а можно и оставить эти поля пустыми:

7. Ввести системный пароль и нажать **Разрешить**.

8. Передать созданный `p12` файл на другой компьютер (и пароль, если он был установлен на шаге 6).

------

### На принимающем компьютере:

1. Открыть **Keychain Access (Связка ключей)**.

2. Выбрать `Файл > Импортировать объекты` (`File > Import`)