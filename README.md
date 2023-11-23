# Getting Started

This is the multimodule sample for shared data stratgegies.

The main branch is simply the sample application used for all scenarios. It is not intended to be directly used.
The application consists of a couple of modules:

Module | Purpose
---------|----------
`books` | shared content for all modules
`customers` | shared content for some modules
`orders` | CAP application reusing `books` and `customer`
`database` | optional module depending on scenario

The repository contains multiple branches, which setup the build in different directions.
The branches are:

Branch Name | Purpose
-----|-----
`db-monolith` | all DB and service definitions in one central module
`db-central-build` | each service has own DB and service definitions, but the build is central


## Setup

- Change to the desired branch of the repository
- Follow the readme of that specific branch

## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.
