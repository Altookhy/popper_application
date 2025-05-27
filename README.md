# Color Matching Popper ILP Project

## Overview
This project demonstrates a simple color-matching placement program and uses [Popper](https://github.com/logic-and-learning-lab/Popper) (an Inductive Logic Programming system) to learn the rule for valid placements. 

The goal: **Place n objects into n specific cells (e.g. objects and cells have the attribute colour that needs to be the same).**

- **background knowledge**: Prolog (`bk.pl`)
- **Learning task**: Popper with examples (`exs.pl`) and bias (`bias.pl`)

---

## Installation & Setup

### 1. Requirements
- [SWI-Prolog](https://www.swi-prolog.org/) (for running the program)
- [Python 3](https://www.python.org/) (for Popper)
- [Popper](https://github.com/logic-and-learning-lab/Popper) (see below)
- [Docker](https://www.docker.com/) or [WSL](https://docs.microsoft.com/en-us/windows/wsl/) for Linux-based Popper runs

### 2. Clone Popper
```
git clone https://github.com/logic-and-learning-lab/Popper.git
```

### 3. Using Docker
```
docker build -t popper-env .
docker run -it -v D:/Uni:/workspace popper-env
cd /opt/popper
```

### 4. Project Files
Place the following files in your working directory:
- `bk.pl` (background knowledge)
- `exs.pl` (examples)
- `bias.pl` (Popper bias)

---

## Running Popper (Learning the Rule)

1. **Open a terminal in your project directory.**

2. **Run Popper:**
   ```
   python ../popper.py .
   ```
   (Or use the full path to `popper.py` if needed.)

3. **Expected Output:**
   Popper will learn a rule like:
   ```
   valid_place_action(O,X,Y,State) :-
       cell_available(X,Y,State),
       object_color(O,Color),
       cell(X,Y,Color).
   ```
   Precision and recall should be 1.00 if your examples are correct.

---

## How It Works
- **Background knowledge** (`bk.pl`): Defines objects, cells, colors, and helper predicates for availability.
- **Examples** (`exs.pl`): Positive and negative examples of valid placements.
- **Bias** (`bias.pl`): Tells Popper what predicates and types to use.

---

## Customization
- To change the grid or objects, edit `bk.pl`.
- To add more test cases, edit `exs.pl`.
- To change the learning bias, edit `bias.pl`.

---

## Troubleshooting
- If you get `SIGALRM` errors, run Popper in a Linux environment (Docker, WSL, or Linux VM).
- If Popper can't find a solution, check your examples and bias for consistency.


