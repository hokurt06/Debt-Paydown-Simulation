# Debt Paydown Simulator

## Project Description 
By the end of 1945, with the United States deeply involved in the Second World War, the national debt had risen to about **$250 billion**, roughly equal to the nation’s entire Gross Domestic Product (GDP) at the time. During the same period, the **Electronic Numerical Integrator and Computer (ENIAC)**—the first programmable, general-purpose electronic computer—was being developed at the Army Research Laboratory to aid wartime calculations. Although ENIAC was not completed until the war’s end, it quickly proved invaluable in the immediate postwar years, powering pioneering work in **numerical weather prediction**, **early thermonuclear design**, and **large-scale scientific simulations** using emerging **Monte Carlo methods**. Economists also saw the potential of such a machine, applying it to model economic growth, simulate national debt trajectories, and test policy scenarios that were too complex or time-consuming to calculate by hand.  

This project, developed under the mentorship of **Dr. Brian Stuart** and using his **Go-based ENIAC simulator**, recreates the perspective of a 1940s economist attempting to simulate national debt paydown over 50 years using the ENIAC. For contrast, a modern Python-based simulation is also included, incorporating GDP growth, interest accumulation, and structured payment schedules to illustrate how the same problem might be approached with today’s tools.

## Features
- **In the Python program:**  
  a. Modern model of debt dynamics, incorporating GDP growth, interest on debt, and payments as a percentage of GDP  
  b. A line chart visualizing the remaining debt over a 50-year horizon  

- **In the ENIAC program:**  
  a. Historical reconstruction of a fixed-step subtraction loop, mimicking how a 1940s economist might model repeated debt payments  
  b. Use of two accumulators and the Master Programmer to automate 50 iterations of the subtraction process  
  c. Output of intermediate and final results showing the simulated trajectory of national debt paydown  

## Tech Stack
- **Python 3.11+**, Matplotlib (for plotting)
- **Go-based ENIAC Simulator by Dr. Brian Stuart** 

## Project Structure
/debtsim  
&nbsp;&nbsp;└── /eniacappr.e  
&nbsp;&nbsp;└── /modernappr.py


## Getting Started

### 1) Run the modern Python model
```bash
python -m venv .venv
# Windows: .venv\Scripts\activate
# macOS/Linux:
. .venv/bin/activate

python -m pip install matplotlib
python modernappr.py

Outputs created in repo root:
- debt_history.csv
- debt_projection.png
```

### 2) Run the ENIAC model
Follow the [README.md instructions](https://github.com/blstuart/eniac-simulator/blob/master/README.md) on how to download and set up the Go-based ENIAC Simulator.
1. Copy your ENIAC patch file eniaccappr.e into the simulator’s programs/ directory (e.g., eniac-simulator-master/programs/eniaccappr.e).
2. From the simulator’s root directory, run the program:

macOS/Linux:
```bash
./src/eniac programs/eniaccappr.e
```

Windows (PowerShell or CMD):
```bash
.\src\eniac.exe programs\eniaccappr.e
```
3. Use the documentation in ./doc/ (within the simulator repo) to navigate initiating and pulsing (e.g., issuing the initial pulse, stepping the Master Programmer, viewing accumulator outputs).

## Results
- The Python model produces:
  - `debt_history.csv` — a CSV log of debt values across the 50-year simulation
  - `debt_projection.png` — a line chart showing the trajectory of debt payoff  

Example Output:

![Debt Projection](debt_projection.png)

- The ENIAC model produces numerical output directly from the simulator.  
  - Watch the accumulator holding the running total (A19 in this program).  
  - Negative values will appear in **10-digit complement form** (e.g., `9999999932` = –68).  
  - After 50 iterations, the final result reflects the accumulated subtraction.

## Notes on ENIAC Simulation
- **Data trunks** carry numerical values between units.  
- **Program trunks** carry control pulses that tell units when to perform operations.  
- The **Master Programmer** is configured here to repeat the subtraction loop 50 times automatically.  
- Accumulator A19 stores the running result, while Accumulator A20 holds the constant to subtract.  

## Acknowledgments
- **Dr. Brian Stuart** – for the ENIAC simulator and mentorship on historic computing.  
- The ENIAC development team (University of Pennsylvania, 1940s) for the original architecture.  

## License
MIT License – free to use, adapt, and share.

