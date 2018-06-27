-- ##### title: Categories compare  DejaOffice vs Omninotes v1b ####
-- ### by Daniel Perez Gonzalez  GPL3 ###
-- ### Data Interoperability for PIM (Personal Information Managers) ###
-- ### https://github.com/dapgo/PIM_Data_Interoperability  ###

SELECT 
    DejaCat.clxcategory  AS  DejaCategories  
    ,omni_cat.name AS OmniNotes
FROM companionlink.categories DejaCat
LEFT JOIN omninotes.categories omni_cat
   ON  omni_cat.name=DejaCat.clxcategory

UNION

SELECT 
    DejaCat2.clxcategory    
    ,omni_cat2.name 
FROM omninotes.categories omni_cat2
LEFT JOIN  companionlink.categories DejaCat2
   ON  DejaCat2.clxcategory=omni_cat2.name
          
