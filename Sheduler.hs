import System.Environment
import System.Directory
import Data.Map
import Data.List
import System.Exit
import System.IO
-- atleast one of these is extranious

--progressing down the file new input variables will have earlier already processed sections removed,
--the variables are named for the element of a proper input file that should appear next, not elegant but has uses

main = do                                                       
    args <- getArgs     --get file name argument

--test io validity    
    
    --Two checks on File, and argument validity
    if 2 /= length args
        then do { putStrLn "Invalid Arguments, Format: programName Inputfile OutputFile" ; exitSuccess } 
        else return ()

    temp1 <- doesFileExist (head args)--this bit acts wierd if you put it in the if statement
    if temp1 /= True
        then do { putStrLn "This File Does Not Exist, Goodbye" ; exitSuccess }
        else return ()
    
    inputWhole <- readFile (head args)
    
    --test name header               
    if "Name:\n" `isPrefixOf` inputWhole
        then return ()
        else do {putStrLn "Invalid file format, faulty name heading" ; exitSuccess }
        
    print (sheduleName concat(inputWhole))
    
{-   
    if "forced partial assignment:\n" `isPrefixOf` inputForcedPartialHeader
        then return ()
        else do {putStrLn "Invalid file format, faulty forced partial assignment heading" ; exitSuccess }
    inputForcedPartials <- stripPrefix "forced partial assignment:\n" inputForcedPartialHeader
-} 
    
    --main code
    
    return () -- variable declaration cannot end do block, so stub return just in case, print later
    
    
--monads suck so here are functions instead of imperitivity
    
    
sheduleName x = tail $ takeWhile (/= "\n") $ dropWhile (/= "\n") x -- give file as string get shedule name as string
    
    
    
    
    
   






--scrap   
--fileLines <- fmap lines (readFile (head args))  --create list of all lines from input file probably    