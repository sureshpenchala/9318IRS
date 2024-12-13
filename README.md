## Paper Title :
 Controlled Wireless Channel using Multi-Antenna Multi-IRS Assisted Communication System: A Comprehensive Performance Analysis

## Paper ID: 9318

## Author’s details:

 Suresh Penchala, Shravan Kumar Bandari, Member, IEEE, V.V. Mani, Senior Member, IEEE, and Anastasios Drosopoulos, Member, IEEE


## Overview 

This repository contains scripts and data to reproduce the results of the paper titled, "Controlled Wireless Channel using Multi-Antenna Multi-IRS Assisted Communication System: A Comprehensive Performance Analysis". This study evaluates the performance of a multi-antenna, multi-IRS-assisted communication system in generalized η-μ fading channels under NLOS conditions. It derives theoretical expressions for BER, Ergodic Capacity, and Energy Efficiency, validated through Monte-Carlo simulations. Results show significant performance improvements with multiple IRSs, optimized placement, and additional antennas, offering enhanced reliability, capacity, and energy efficiency for future communication systems.


## The key features of the Paper

- **IRS-Assisted Communication**: Utilizes intelligent reflecting surfaces (IRS) with reconfigurable metamaterials to manipulate wireless propagation channels cost-effectively.
- **Generalized Fading Analysis**: Analyzes system performance under generalized η-μ fading channels, covering Nakagami-m, Nakagami-q, and Rayleigh channels as special cases for practical scenarios.
- **Performance Metrics**: Derives theoretical expressions for Bit Error Rate (BER), Ergodic Capacity (EC), and Energy Efficiency (EE), validated through Monte Carlo simulations.
- **System Design Insights**: Demonstrates improved performance with more antennas, multiple IRSs, optimized IRS placement (near BS or UE), high μ, and low η values.
- **Significant Gains**: Highlights substantial gains in BER, EC, and EE for triple-IRS systems and multi-antenna setups compared to single-IRS configurations.
- **Optimization Benefits**: Shows that strategic placement of IRSs reduces BER, enhances capacity, and boosts energy efficiency.

## Procedure Steps

% 1. Parameter Initialization

- Define IRS, channel, and transceiver parameters (e.g., N=50, L=2, M=2, eta=1, mu=1, etc.).
- Set distances (d, d1, d2, d3) and heights (h1, h2, h3, ht, hr).

% 2. Channel Gain Calculation

- Compute path losses (hpx, gpx) using distances.
- Simulate η-μ channel gains using eta_mu_channel.m

% 3. IRS Reflection Coefficients

- Calculate phase adjustments (phi) for IRS and total combined channel gains (C).

% 4. Monte Carlo Simulation

- Generate random bits (x) and additive noise (n).
- Transmit signals through the system and compute received signals.
- Compare received signals to detect errors and calculate BER.

% 5. Theoretical Analysis

- Derive mean and variance of channel gains (mean_ray, variance_ray).
- Compute theoretical BER using integration over fading distributions.

% 5. Visualization

-Plot simulated and theoretical BER against SNR.

%-----------------------------------------------------------------

- For any queries, please contact this mail id: penchalasuresh@gmail.com.
