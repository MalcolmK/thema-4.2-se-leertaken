# Management review

The system has been developed in such a way that it can easily be extended. The usage of widely used languages and techniques is beneficial. Because of this, it is easier to extend and adjust specific parts of the system. Also there is a very loose coupling between all the different parts of the system. This makes it easier for developers to work simultaneously. Another benefit of this is that it is easier to decouple certain parts of the system. E.g. when a new mobile app will be developed, it will be easier to change the graphical user interface or use other techniques/platforms.

### Customizability
Unit tests extensively cover the communication between the applications. This is also the only part for which tests are written. The benefit of these tests is that when adjustments are made to the communication layer of the application, these tests can be used to validate those adjustments. This increases the speed an reliablity of making changes to the communication layer of the application.

The downside of just writing tests for the communication layer of the application, is that other parts of the application cannot be automatically tested. If we want to be sure that adjustments to the app are valid and not breaking anything, we will have to write tests for this part. However, the code itself is written very clean and robust. This reduces the risk of making mistakes when adjusting the code.

### Configurability
The possibility for changing certain configuration values has not been taken into account. As of now, all the configuration values are hard coded and therefore cannot be adjusted without the help of a developer. After adjustments have been made, the system must be tested again to be sure it still works as expected. However, the code has been developed in such a way that is easy to add configuration options for the administrator users.

### Affordability
The costs of the system are pretty low. It has been developed on a light weight server, which worked as expected. However during development the server load was low, so it is unclear how the system will perform when used by a higher number of people simultaneously. A heavier server might be required.
