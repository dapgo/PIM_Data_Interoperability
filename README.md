# PIM_Data_Interoperability

Code to create Interoperability between data in different formats from PIM (personal information managers)
The aim of this project is to research, document and develop solutions against the loss of access to information due the fact that 
there are many risks for our information. And information and data his too important to expose to loss.


#### Potential risks and current scenario ####
1. Lack of standards on file format (sqlite, json,....)
2. Lack of standards on data estructure (different fields, type, tables)
3. Lack of Import/export functions (many apps cannot even export to CSV)
4. Cycle life of Commercial apps/closed source (years after an app is abandoned, hardware can be incompatible with our old software)
5. Change of Platform, software maybe is not available for our new platform (iOS, Android, Linux, Windows, MacOS, Blackberry, ....)
6. Existance of non IT skilled users, probably they are not aware of these risks and will not decide a software thinking in interoperability


#### Support/Covered software/ Data formats ####
1. Noteeverything (Memos/Notes) (Android-Commercial)
2. Omni-notes (Memos/Notes,Checklist) (Android-Opensource/desktop multiplatform)
3. DejaOffice (only Memos/Notes) (Android,iOS,..-Commercial)


#### Developments/Solutions ####
1. Based in SQL -Scripts and queries to migrate information from/to Noteeverything/Omni-notes/DejaMemos
2. (in progress) Documentation about tables, fields, relations,etc
3. (PENDING TODO) Script to extract Calendar events from SQLlite db to ICS format
4. (PENDING TODO) Script to extract Tasks/Notes events from SQLlite db to JSON format
5. (thinking about) Apps (android, pc) to automate the conversion from a format to another


#### Apps/data not fully supported or planned to support ####
1. DejaOffice (Calendar,Tasks,Memos/Notes,Contacts) (Multiplatform(mobile)-Commercial)
    Database in SQlite 
2. Tasks (Android-Opensource)
    Data in JSON
3. Simple Calendar (Android-Opensource)
    internal Data (not accesible), Import/export ICS v2.0 

(if you think other apps should be included in the list, raise an issue including reasons, and as much technical information as possible)
    
    

#### Donations #### 
Will be accepted and specially if you request help with different apps data formats ;)

However, at the moment a Donation account is not available, it is too early but i would like to set because I think it is a good way to receive feedback from users and motivate the developer



