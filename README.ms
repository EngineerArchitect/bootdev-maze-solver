# Setting up tkinter 

For most systems, tkinter will work out of the box. Run the following command in your terminal to see if it's installed:

```shell
python3 -m venv venv
source venv/bin/activate

python3 -m tkinter
```

tkinter depends on the Tcl/Tk library. I've found that installing the tk-dev or python-tk packages are usually the easiest way to install and link it to your Python version. On Ubuntu (Linux), run:

```shell
sudo apt-get install python3-tk
```
