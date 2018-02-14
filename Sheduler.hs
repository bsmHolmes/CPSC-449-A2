import System.Environment
import System.Directory
import Data.Map
import Data.List
import System.Exit
import System.IO
-- atleast one of these is extranious

main = do                                                       
    args <- getArgs     --get file name argument

    --Two checks on File, and argument validity
    if 2 /= length args
        then do { putStrLn "Invalid Arguments, Format: programName Inputfile OutputFile" ; exitSuccess } 
        else return ()

    temp1 <- doesFileExist (head args)--this bit acts wierd if you put it in the if statement
    if temp1 /= True
        then do { putStrLn "This File Does Not Exist, Goodbye" ; exitSuccess }
        else return ()
        
    fileLines <- fmap lines (readFile (head args))  --create list of all lines from input file
    
    --main code

    return () -- variable declaration cannot end do block, so stub return just in case
  


  
  
  
  
  
  
  
--WIP  
  
    --recursive search for FPA, checks for error in file, returns list of FPA tuples
--getForcedPartials :: [[String]] -> [( a, b)]
--getForcedPartials f
--    | length f == 0 = do {putStrLn "File Error, No Forced Partial Assignment section" ; exitSystem }
--    | fpa           = tuplizeFPA (tail f) -- make tuples out of further lines, function name is flexible
--    | not fpa       = getForcedPartials (tail f)
--    where fpa = "forced partial assignment:" == (head f)
    
    --Does not catch all tuple errors
--tuplizeFPA :: [[String]] -> [( a, b)]
--tuplizeFPA f 
--    | length (head f) == 0  = []
--    | head (head f) /= "("  = do {putStrLn "File Error, Invalid Tuple Form" ; exitSystem }
--    | tail (head f) /= ")"  = do {putStrLn "File Error, Invalid Tuple Form" ; exitSystem }
--    | notElem "," head f    = do {putStrLn "File Error, Invalid Tuple Form" ; exitSystem }
--    | otherwise             = [(a,b) ++ (tuplizeFPA (tail f)) | a = filter isDigit, --can be done better will improve
    



















                 