# Example Gallery App

The app have 2 page: Login Page and Gallery Page.<br />
The currently, the app just implemented UI.<br />
And the app was had network repository to call api. It just mock.<br />
The app is using GetIt to register singleton for network repository.<br />

Login Page: ```lib/pages/login/```<br />
    Have 3 widget: username, password and login button.

Gallery Page: ```lib/pages/gallery/```<br />
    Have a grid view to show images.

Network Reposiory: ```lib/repositories/network_repository/```<br />
Dependency injection: ```lib/core/di/locator.dart```<br />

# Requirement

Modify the app by using ``network repository``.<br />
Use Bloc state management.

### Login Feature
Make login feature with ``signIn`` function in ``network repository``.<br />
The username and password shouble be at least 3 letters.<br />
Please encrypte password using MD5 before calling api.<br />
When waiting to receive a response from ``network repository``, the Login button will show loading icon in the centre.
If login success, direct to Gallery Page.<br />
If have error, show error message by using ScaffoldMessenger.<br />

Account Test:<br />
```Username: tester01```<br />
```Password: 123456789```

### Fetch Gallery
Fetch list image to show in Gallery Page by using ``fetchGalleries`` in ``network repository``.<br />
Show loading in the centre of the page when waiting to receive a response.



