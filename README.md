# Getting Started

This is the multimodule sample for shared data stratgegies.

It contains these folders and files, following our recommended project layout:

Module | Purpose
---------|----------
`database` | all DB entities for all modules
`books` | microservice defining shared content for all modules
`customers` | microservice shared content for some modules
`orders` | CAP application reusing `books` and `customer`


## Setup

- Open a terminal in the **root** directory of the project
- Run  `npm i`
- each individual module will no be able to run using the **workspace** concept
- deploy the main DB by running `cds deploy --to sqlite:../db.sqlite` from the `database` directory
- either switch to the `orders` directory and run `cds w` or run `cds w orders` 
- run the other services (`books` and `customers`) on other ports
- all services will access the same physical DB in the root directory of the project
- test the multi-service setup:
  - run `Books` first
  - edit at least one book title, e.g. change the title of wuthering heights
  - run `Orders` on a separate port and get the OrderBooks entity
  - note how the changed book title is reflected in ths Orders Service


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.