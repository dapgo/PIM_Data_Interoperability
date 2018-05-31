-- ##### title:  insert Notes from NoteEverything to omninotes####
-- ### by Daniel Perez Gonzalez  v3.1 GPL3 ADD ###
--CATEGORY from subquery 
--SQLite, refresh windows after executions
--folder includes a symbol before the name
--SUBSTR : 1ST DIGIT IS 1, to skip 1 use 2
--DB info:
--color is required otherwise app crash
--No classified entries in Noteeverything were associated in previous script to name '0 NO category' and date now

INSERT INTO omninotes.notes(title, content, creation, last_modification,
	archived, trashed, reminder_fired, locked ,checklist  --fill with 0
	,category_id) --from SUBQUERY - table categories

  SELECT title, body, created_at, modified_at,0,0,0,0,0 
	,(SELECT omni_cat.category_id
	   FROM omninotes.categories omni_cat
	   
	   WHERE omni_cat.name= 
	      -- SUBSTR(folder,2)
	   CASE WHEN SUBSTR(folder,2)='' THEN '0 NO category'  --same string previously defined in query categories
		 ELSE SUBSTR(folder,2)
	   END            
		) subqCat
  FROM noteeverything.Notes 
  WHERE is_folder=0
   --JUST IN CASE OF NULL FOR PRIMARY KEY
    and created_at IS NOT NULL;


