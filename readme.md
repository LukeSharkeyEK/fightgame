
This readme.md markdown file contains all the neccesary information for this code to run properly.  
It is easiest to read using markdown viewing/preview software:  
[Markdown Viewer (Optional)](https://chrome.google.com/webstore/detail/markdown-viewer/ckkdlimhmcjmikdlpkmbgfkaikojcbjk)

# Requirements

You will need a C compiler to make this executable, GCC compiler is recommended. If another compiler is used, change the `CC=gcc` variable in `makefile` to `CC= your_compiler`.

#### System Requirements

Some rough RAM calc.  

#### Files

obj/*.c  
makefile
savefile stuff  
random data files

# Starting Out Instructions

## Compilation
To compile simply run the makefile, compilation flags and output file locations can be changed from this file.  
By default, this should create an executable in the `bin/` folder.  
Double click this executable to run it (or run it from a shell).

### Step 1 on Windows - Run cmd

Open command prompt - Press <kbd>Windows</kbd> + <kbd>R</kbd> and enter `cmd.exe`. (Or search for it in file explorer and run it from there).  


### Step 1 on MacOS - Run terminal

Open terminal - Press <kbd>Command</kbd> + <kbd>Spacebar</kbd> and search for `terminal.app`

### Step 2 - Run makefile

Then use the `cd` command followed by the file path to change file directory to reach the folder containing this file and makefile.  
Here are some examples of the `cd` command for reference, press <kbd>Enter</kbd> to execute the commands.
> Changing working directory to `Documents/Games/FolderWithThisFile` in one command:
>> `cd Documents/Games/FolderWithThisFile`  

> In multiple commands:  
>> `cd Documents`  
>> `cd Games/FolderWithThisFile`  

> Going up a folder, going from `Documents/Games` to `Documents`:  
>> `cd ..`  

> <kbd>Tab</kbd> can be used to autocomplete folder names:  
>> `cd Docu` &rarr; <kbd>Tab</kbd> &rarr; `cd Documents`  

It is also possible to use to `ls` to list the folders in the current directory to help navigate your files.
The current folder/filepath should be displayed to the left of the input space.

Once you reach the location of makefile, run the command `make`.  

### Step 3 - Run the program

This should create the executable in a folder called `bin`, double click this in file explorer/finder to run.  
Or run with `filename.exe` in cmd (Windows) or `./filename` in terminal (MacOS).  
