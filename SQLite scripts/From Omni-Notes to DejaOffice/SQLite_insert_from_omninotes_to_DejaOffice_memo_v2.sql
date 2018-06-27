-- ##### title:  INSERT INTO DejaOffice Memos from OmniNotes ####
-- ### by Daniel Perez Gonzalez  v3.1 GPL3 ###
-- ### Data Interoperability for PIM (Personal Information Managers) ###
-- ### https://github.com/dapgo/PIM_Data_Interoperability  ###

--SQLite, refresh windows after executions
-- Limit and union requires subqueries
--date in unixepoch the number of milliseconds since 1970
--Note. before insert count total entries on db and compare with select output
--Pending: detect void category on source and move to target( now these entries are not moved)
--Detect non existing categories on target an create Cat and insert entry; at the moment categories must exist with same name


INSERT INTO companionlink.memos
--SELECT  
(
        subject
        ,note --same content than field subject
        ,newnote --content of body
        ,modifiedHH        
        ,clxcategory  --to fill with name from subquery
        ,recordType --to fill with 4
        --to fill with 0
        ,modifiedPC
        ,clxdeleted        
        ,private
        ,sortTime
        ,hasAttachment
)
  SELECT  onotes.title
        , onotes.title  --to fill note
        , onotes.content  --to fill newnote
        , onotes.last_modification
       --for testing ,datetime(last_modification/1000,'unixepoch', 'localtime')       
        --,category_id  --Id
        
        ,(   SELECT omni_cat.name  --SUBQUERY to obtain Cat name
	       FROM omninotes.categories omni_cat                           
	       WHERE omni_cat.category_id=onotes.category_id
               --Control that  category exist on target db
                 --      (SELECT DISTINCT clxcategory
                   --    FROM companionlink.memos)
          )subqOmniCatName
          ,4,0,0,0,0,0
          FROM  omninotes.notes onotes
          WHERE subqOmniCatName IN    --Si una categoria no existe no INSERTar la entrada
                  (SELECT clxcategory
                 FROM companionlink.categories     )
          --testing LIMIT 20;