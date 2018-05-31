-- ##### title:  insert Folder categories from NoteEverything to omninotes####
-- ### by Daniel Perez Gonzalez  v2.0 GPL3   ###
--if folder has not name to category 0 NO category
--SQLite info: refresh windows after executions
--SUBSTR : 1ST DIGIT IS 1, to skip 1 use 2
--DB info:
--folder includes a symbol before the name
--by default folder with void value is added to omninote categoy as void
--color is required otherwise app crash
--by default description has void instead of null

INSERT INTO omninotes.categories(category_id,name,color)
   --category_id is filled with creation date
SELECT  
      CASE WHEN created_at IS NULL THEN strftime('%s', 'now') *1000  --if date was missing
          ELSE created_at 
      END
     --,SUBSTR(folder,2)
     ,CASE WHEN SUBSTR(folder,2) !='' THEN SUBSTR(folder,2) 
          ELSE '0 NO category' 
      END
      , '-11751600'   --set a color 
   FROM noteeverything.Notes
   WHERE is_folder=1  ;
