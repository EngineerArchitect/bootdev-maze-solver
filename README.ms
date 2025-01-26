# Setting up tkinter 

For most systems, tkinter will work out of the box. Run the following command in your terminal to see if it's installed:

```shell
$ python3 -m venv venv
$ source venv/bin/activate

$ python3 -m tkinter
```

tkinter depends on the Tcl/Tk library. I've found that installing the tk-dev or python-tk packages are usually the easiest way to install and link it to your Python version. On Ubuntu (Linux), run:

```shell
$ sudo apt-get install python3-tk
```

# Unit Tests

To run Unit Tests

```shell
$ python tests.py
```

## Ideas for Extending the Project

Some Ideas include:
- Add other solving algorithms, like breadth-first search or A*
- Make the visuals prettier, change the colors, etc
- Mess with the animation settings to make it faster/slower. Maybe make backtracking slow and blazing new paths faster?
- Add configurations in the app itself using Tkinter buttons and inputs to allow users to change maze size, speed, etc
- Make much larger mazes to solve
- Make it a game where the user chooses directions
- If you made it a game, allow the user to race an algorithm
- Make it 3 dimensional
- Time the various algorithms and see which ones are the fastest