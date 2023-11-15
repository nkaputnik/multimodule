# Getting Started

This is the multimodule sample for shared data stratgegies.

It contains these folders and files, following our recommended project layout:

Module | Purpose
---------|----------
`books` | shared content for all modules
`customers` | shared content for some modules
`orders` | CAP application reusing `books` and `customer`


## Setup

- Open a terminal in the **root** directory of the project
- Run  `npm i`
- each individual module will no be able to run using the **workspace** concept
- either switch to mthe `orders` directory and run `cds w` or run `cds w orders` 


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.
