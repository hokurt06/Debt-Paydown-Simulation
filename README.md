# Debt Paydown Simulator

## Project Description 
By the end of 1945, with the United States deeply involved in the Second World War, the national debt had risen to about **$250 billion**, roughly equal to the nation’s entire Gross Domestic Product (GDP) at the time. During the same period, the **Electronic Numerical Integrator and Computer (ENIAC)**—the first programmable, general-purpose electronic computer—was being developed at the Army Research Laboratory to aid wartime calculations. Although ENIAC was not completed until the war’s end, it quickly proved invaluable in the immediate postwar years, powering pioneering work in **numerical weather prediction**, **early thermonuclear design**, and **large-scale scientific simulations** using emerging **Monte Carlo methods**. Economists also saw the potential of such a machine, applying it to model economic growth, simulate national debt trajectories, and test policy scenarios that were too complex or time-consuming to calculate by hand.  

This project, developed under the mentorship of **Dr. Brian Stuart** and using his **Go-based ENIAC simulator**, recreates the perspective of a 1940s economist attempting to simulate national debt paydown over 50 years using the ENIAC. For contrast, a modern Python-based simulation is also included, incorporating GDP growth, interest accumulation, and structured payment schedules to illustrate how the same problem might be approached with today’s tools.

## Features
- Modern model of debt dynamics (GDP growth, interest on debt, payment as % of GDP)
- Generates a chart of remaining debt over time
- ENIAC patch that performs a repeated 
- Clear explanations of **data trunks vs program trunks**, and how the **Master Programmer** drives loops

## Tech Stack
- **Python 3.11+**, Matplotlib (for plotting)
- **ENIAC simulator** (Accumulator, Constant Transmitter, Master Programmer; load the patch and run)

## Project Structure
