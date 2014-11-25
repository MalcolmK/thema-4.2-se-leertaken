#Management view

The system have been developed in such a way it can easily be extended. There have been made use of widely used languages and techniques. Because of this, it is easier to extend and adjust specific parts of the system. Also, there is a very loose coupling between all the different parts of the system. This makes it easier for developers to work simultaneously. Another benefit of this, is that it is easier to uncouple certain parts of the system. E.g. when there will be developed a new app, it will be easier to change the styling or use other techniques.

##Customizability
There have been written tests for the core of the application. This is also the only part for which tests are written. The benefit of these tests is that when there are made adjustments to the core of the application, these tests can be used to validate those adjustments. This increases the speed an reliablity of making changes to the core of the application.

The con of just writing tests for the core of the application, is that other parts of the application cannot be tested. If we want to be sure that adjustments to the app are valid and not breaking anything, we have to write tests for this part. However, the code itself have written very clean. This reduces the risk of making mistakes when adjusting the code.

##Configurability
The possibility for changing certain core values have not been taken into account. As of now, all the core values are hard coded and therefor cannot be adjusted without the help of a developer. After there have been made such adjustments, the system must be tested again to be sure it still works as expected. However, the code have been developed in such a way it is clear how and where these adjustments should be made.

##Affordability
The costs of the system are pretty low. It have been developed on a light weight server. It was tested with a minimal server load. It is not known how the server will behave on heavier loads and if it should be deployed on a heavier server.