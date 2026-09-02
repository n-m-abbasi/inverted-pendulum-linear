# **README — Linearized Inverted Pendulum Model (Clean Copy-Paste Version)**

# Linearized Inverted Pendulum Model

This repository contains the linearized state‑space model of the inverted pendulum on a cart.  
The project derives the linear dynamics around the upright equilibrium, applies a PD controller, and visualizes the system response using MATLAB.

## Overview

The inverted pendulum is a classical benchmark in control theory.  
This project focuses on:

- Deriving the linearized model  
- Building the A, B, C, D matrices  
- Applying a stabilizing PD controller  
- Simulating the linear system response  
- Visualizing cart position and pendulum angle  

## Files Included

- linearized_cart_pole.m — Initial linear model script  
- linear_model.m — Generates A, B, C, D matrices  
- linear_sim.m — Full linear simulation  
- visSim_cart_pole.m — Animation and visualization  

## System Parameters

Cart mass (M): 0.5 kg  
Pendulum mass (m): 0.2 kg  
Pendulum COM distance (l): 0.3 m  
Pendulum inertia (I): 0.006 kg·m²  
Viscous friction (b): 2 N·s/m  
Gravity (g): 9.8 m/s²  

## How to Run

Open MATLAB and run:

linear_sim

This will:

- Build the linear state‑space model  
- Apply the PD controller  
- Plot cart position and pendulum angle  
- Display the pendulum animation  

## Outputs

- Cart position over time  
- Pendulum angle over time  
- Control input  
- Real‑time animation  

## Project Goals

- Analyze stability of the linearized model  
- Compare linear vs nonlinear behavior  
- Demonstrate PD stabilization  
- Provide a clean, modular MATLAB implementation  

## License

This project is for academic and portfolio purposes.  
Feel free to use or modify the code with proper credit.
