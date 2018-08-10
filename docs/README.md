 ![icon](https://dapgo.github.io/PIM_Data_Interoperability/resources/Interoperability_proj_logo.png)
 

PIM Data Inter-Operability
==========
Solutions to improve the Interoperability between data form different formats and PIM apps (personal information managers)

![SLicense](https://img.shields.io/badge/License-GPLv3-red.svg)

# Introduction


The aim of this project is to research, document and develop solutions against the loss of access to information due the fact that 
there are many risks for our information. Because data and personal information is too important to expose to loss.

**[More info in the wiki](https://github.com/dapgo/PIM_Data_Interoperability/wiki)**


# Reasons, potential risks and current scenario
1. Lack of standards on file format (sqlite, json,....)
2. Lack of standards on data estructure (different field names, type, tables)
3. Lack of Import/export functions (many apps cannot even export to common format CSV, iCalendar,... )
4. Life Cycle of software and specially on Commercial/closed source (abandoned apps will not be compatible with future hardware/operating systems)
5. Hardware/OS platforms, software maybe is not available for others platform (iOS, Android, Linux, Windows, MacOS, Blackberry, ....)
6. Exposure of non IT skilled users to problems, probably they are not aware of these previous facts and risks and they had not chosen a  software thinking in interoperability


 ![icon](https://dapgo.github.io/PIM_Data_Interoperability/resources/Interoperability_apps_diagram.png)

# Support/Covered software/ Data formats
- [x] Noteeverything (Memos/Notes) (de.softxperience.android.noteeverything) (Android-Commercial)
- [x] Omni-notes (Memos/Notes,Checklist) (it.feio.android.omninotes.foss) (Android-Opensource/desktop multiplatform)
- [x] DejaOffice (only Memos/Notes) (com.companionlink.clusbsync) (Android,iOS,..-Commercial)
- [x] Simple Calendar (Android-Opensource)(com.simplemobiletools.calendar) through import/export ICS v2.0
- [ ] Evernote (Android/desktop-Commercial)(com.evernote)
- [ ] Notes for Firefox (Android-Opensource)(org.mozilla.testpilot.notes) 


![Apps data, functions, formats](https://dapgo.github.io/PIM_Data_Interoperability/resources/table_apps_imp_exp_format.png)

# Developments/Solutions
[More info in the wiki](https://github.com/dapgo/PIM_Data_Interoperability/wiki)
- [x] Based in SQL -Scripts and queries to migrate Notes/memos from Noteeverything to Omni-notes
- [x] Based in SQL -Scripts and queries to migrate Notes/memos from Omni-notes to DejaOffice/DejaMemos
- [x] (in progress) Contact developers and ask for standard format and interoperatibility features
- [x] (in progress) Documentation about tables, fields, relations,etc
- [ ] (PENDING TODO) Script to extract Evernote SQLite or xml (.enex) to SQLlite (Omni-notes)
- [ ] (PENDING TODO) Script to extract Evernote SQLite or xml (.enex) to JSON format (Notes for FF)
- [ ] (PENDING TODO) Script to extract "Notes for FireFox" notes from JSON to SQLlite (Omni-notes)
- [ ] (PENDING TODO) Script to extract DejaOffice notes from SQLlite db to JSON format (Notes for FF)
- [ ] (PENDING TODO) Script to extract Omni-notes Notes from SQLlite db to JSON format (Notes for FF)
- [ ] (PENDING TODO) Script to extract Notes/Tasks from "Org mode" file format to ICS(TODO) 
- [ ] (PENDING TODO) Script to extract Notes/Tasks from "Org mode" file format to any JSON format
- [ ] (thinking about) Apps (android) to automate the conversion from a format to another
- [ ] (thinking about) Apps (pc, java cross-platform) to automate the conversion from a format to another

# Apps/data not fully supported or planned to support
See section in wiki
1. Tasks (Android-Opensource) (org.tasks)
    Data in JSON
2. etar (Android v5-Opensource)
3. orgzly(Android-Opensource)
4. Notes for Firefox (Addon/Android-Opensource)
5. your request here


(if you think other apps should be included in the list, raise an issue including reasons, and as much technical information as possible)
    
    

# Donations

<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="encrypted" value="-----BEGIN PKCS7-----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-----END PKCS7-----
">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_donate_SM.gif" border="0" name="submit" alt="PayPal – The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>


https://www.paypal.me/dapgo


Accepted and specially if you request help with different apps/data format ;)

Furthermore, I think that a symbolic donation is a good way to receive feedback from users and motivate the developer



