# Scripts for setting up JupyterLab

This repo lets you use two Python scripts to set up an instance of JupyterLab that you can use to edit a text file called "bash-reminders.txt". This file will be displayed each time you open a terminal in this instance of JupyterLab. If you want, you can set up all instances of JupyterLab to display these reminders when you start a terminal. You can edit the reminders file to add things that you discover but have not memorized yet. 

## How to use this repo 

To run the two scripts in this repo, you have to have completed the following steps. (This list gives you a high level plan. The details steps follow in the next section.) 

1. Install git

2. Install a recent version of Python. If it is installed correctly, you can get the version of Python you will be using by entering 

    `python --version` in the git-bash shell on Windows or 
    
    `python3 --version` in the terminal on macOS.


3. On macOS only, add a "sym-link" that lets you use "python" to start a Python interpreter, just like on Windows. 

4. Make sure you can navigate to your home folder in your file browser and in the terminal you use--the default terminal on macOS or the Mintty terminal that runs git-bash on Windows. 

5. From your home folder, clone this Github repo.

6. Then from the terminal, you can run the two Python scripts that are in the folder named p_scripts. (The letter "p" should remind you that these are Python scripts.)

    `build_jl` 

    `run_jl`

    These do just what they suggest--build JupyterLab and run JupyterLab. 


## Detailed instructions 

For steps 1 and 2, see the homework assignments that you should already have completed. Use the test outlined above to confirm that Python is correctly installed. 

3. To add a symlink on macOS, from its terminal, change to the directory `usr/local/bin` by entering 

`cd /usr/local/bin` 

Confirm that there is an element in the directory for `python3`. To do this, enter

`ls python3`

If there is, it is a symlink to the executable for the version of Python that you installed most recently. If there is not, reinstall a recent value of Python and run the two scripts that are suggested at the end of the installation. This will put it in this directory. 

Then add a second symlink that invokes the one that is already there: 

`sudo ln -s python3 python`

Sudo gives you temporary "superuser permissions." Before it gives these to you, the shell will prompt you to type in your login password. 

Once you succeed, to confirm that this new symlink was added, you can run 

`ls python`

In the terminal, you should also be able to type enter the command 

`python --version` 

and see as output the version of Python that the symlinks point to. 

To understand why this works, look at your PATH. (How do you do that?) Notice that the directory `/usr/local/bin` where you put the symlink is pretty close to the beginning of the list of locations where the OS starts looking for a version of the command `python` that it can execute. 


4. Navigating to your home folder

    a) In your terminal, `cd ~` will take you to your home folder. 

    b) From your home folder, end `pwd` to see the path to that folder. It may also be part of the prompt for your terminal. 

    c) Figure out how to navigate to that path using your file browser. 


5. Getting the files from github. 

In your terminal, navigate to your home folder. Make sure that there is no existing folder there named "reminders." If there is, rename it or delete it. 

If you have successfully set up ssh keys that let you authenticate with github.com, you can then run this command: 

`git clone git@github.com:paulmromer/reminders.git`

This will create a copy in your home folder of the `reminders` repo. Change into the `reminders` directory. 


6. Based on the discussion in class, you should have be able to use either of two possible ways to run the build_jl and run_jl commands from the `reminders` directory: 

- Enter the relative path to the command. For example

`./p_scripts/build_jl`
    
- Add the p_scripts directory to PATH. Then from the `reminders` directory, you can just type 

`build_jl` 

## Next Steps 

### Experiment with JupyterLab 

### Study the two scripts 

### Figure out how to start JupyterLab with some of its extensions

### Homework challenge 
Rewrite the scripts so that you can turn on some of the extensions by giving arguments to the script that runs JupyterLab instead of to the script that builds JupyterLab. 

To remember what they do, you might call your revised scripts 

`build_no_ex`

`run_w_ex`

The first should be something that you run only once. 

You should be able to supply different parameters to the second and re-run it to change which extensions are enabled. You should not have to go through the slow process of running `build_no_ex` again. 

I think it is fine to work with one or two other students to solve this programming challenge. It is ok if you work with classmates who know more than you do and if they explain to you how to complete this assignment. But if so, you need to be able to explain in class how your revised script works. 

You can submit your revised scripts via the homework assignment in Canvas. 









