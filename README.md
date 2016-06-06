# TechMagic iOS App Template

####Application (folder)####
* AppDelegate.swift 	
* Constants.swift 	
* Info.plist
* Bridging-Header.h 
 
####3rdParty  (folder - contains 3rd party code)####

####Extensions (folder - contains extensions for exist classes)####

####Resources (folder)####
* Localization
* Assets
* etc

#### Presentation (folder)####
This layer should be very thin and don’t have any business logic. 

  * Cells
  * CustomControls  
  * Storyboards
  * ViewControllers
  * Views

#### DataSource (folder)####
Sources for all data (Mock, FileSystem, Networking, Keychain, etc)

  * Mock
  * Network

#### DataLayer (folder)####
All calculations, flows, etc, are done here.
Even calculation for UI (to make presentation layer dump and be able cover that with tests)
Some kind of mediator between DataSouce and Presentation layer. (for example, easy switch between mock and networking data)

  * DataManager
  * Enums
  * Forms
  * Helpers
  * Models





