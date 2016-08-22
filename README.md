# TechMagic iOS App Template

###3rdParty###
Contains 3rd party code.

###Application###
Contains AppDelegate.swift and its extensions.	

###DataLayer###
All calculations, flows, etc, are done here.
Some kind of mediator between DataSouce and Presentation layer. (for example, easy switch between mock and networking data)

  * **Core** - constants, session and maybe some other core things.
  * **DataManager** - contains some logic accoring to flow. Can be used directly from Presentation layer. 
  * **Enums** - place where enums are stored
  * **Forms** - classes that are used to send some data to backend. Actually it's models, but with some specific structure and validation.
  * **Helpers** - AppInfo, DeviceManager, etc
  * **Models** - models are always simple. Additional functionality can be added with extensions.

###DataSource###
Sources for all data (Mock, FileSystem, Networking, Keychain, etc)

  * **Mock** - used in case we start without backend available. After we have access, we just switch to Network.
  * **Network** - contains Core folder with:
  * **BaseAPI.swift** - contains general requests for GET, POST, PUT, DELETE. We usually use Alamofire, but with this flow we can change it to anything we want, just replacing 1 class.
  * **Endpoint.swift** - enum that is responsible for generating URL's

###Extensions###
Contains extensions for exist classes

###Presentation###
This layer should be very thin and don’t have any business logic. For complex controllers we add additional classes (f.e. UICalculations, TabsManager, etc), put logic there, and write unit tests.

  * **Base** - contains cells, controllers and views that are used in different parts of app and are not related to 1 specific flow.
  * **Controls** - custom controls, f.e. textFields, alerts, etc
  * **Flows** - each flow descibe some part of app. Contains **Controllers** folder and in some cases **Cells**, **Views**, **Models (UI)**, **Managers**. It allows to have all specific classes and UI elements in 1 place. Makes it easier to work with it.  
  * **Storyboards** - we split projects to some storyboards, but 1 storyboard can contain several **Flows**.

###Protocols###
Some general protocols can be put here

###Resources###
* Localization
* Assets
* etc

###Supporting Files###
plists, Bridging-Header, etc.








