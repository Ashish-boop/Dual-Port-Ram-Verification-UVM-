

# Dual-Port-Ram(SOC)-Verification-UVM-
Developed a UVM-based verification environment for validating a dual-port RAM supporting simultaneous read and write operations. 
Implemented sequencers, drivers, monitors, scoreboards, and functional coverage models to verify data integrity, address collision handling, concurrent accesses, and corner-case scenarios using constrained-random stimulus and self-checking mechanisms.

Designed and verified a multi-instance dual-port RAM subsystem containing four integrated memory blocks within a single SoC-style architecture using SystemVerilog and UVM. Developed reusable UVM agents, drivers, monitors, sequencers, scoreboards, and constrained-random stimulus to validate concurrent read/write operations, address collision handling, memory consistency, and multi-port access behavior. Implemented functional coverage models for address-space partitioning, data-pattern validation, simultaneous transactions, and corner-case scenarios. Utilized assertions and self-checking mechanisms to improve protocol correctness and verification completeness, achieving high functional coverage through coverage-driven verification and targeted coverage closure techniques.

## Overview
This project implements a UVM-based verification environment for validating a Dual-Port RAM design supporting simultaneous read and write operations. The environment uses constrained-random stimulus, self-checking scoreboards, and functional coverage to verify data integrity, concurrent accesses, address collision handling, and corner-case scenarios.

 ==================================
||  RTL IS A PROPRIETARY MATERIAL ||
 ==================================



## Verification Features
- Simultaneous Read/Write Verification
- Data Integrity Checking
- Randomized Traffic Generation
- Functional Coverage Collection
- Self-Checking Scoreboard
- Reusable UVM Components
- Configurable Verification Environment

---

## Verification Methodology
- SystemVerilog
- Universal Verification Methodology (UVM)
- Constrained-Random Verification
- Functional Coverage
- Transaction-Level Modeling (TLM)
- Assertion-Based Checking

---

## Testbench Architecture

```text
Write Sequencer --> Write Driver --> DUT <-- Read Driver <-- Read Sequencer
                           
