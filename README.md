# Zserio Test Data

This repository contains schema files with data files (BLOBs or JSONs) which can be used by the test framework
of Zserio extensions.

Each schema is typically designed to check a single Zserio feature independently.

## Directory Structure

| Folder       | Description |
|--------------|-------------|
| `arguments` | Contains schema files for testing all command line arguments. Each subdirectory is dedicated to one command line argument. Extension can choose schemas for arguments which are relevant. |
| `language`  | Contains schema files for testing all Zserio language features. Each subdirectory is dedicated to one Zserio feature, e.g. structure type. |
| `others`    | Contains schema files that are more complex, attempting to test multiple Zserio language features at once. Each subdirectory is contains one complex schema. |
| `warnings`  | Contains schema files for testing all Zserio warnings. Each subdirectory is dedicated to one Zserio warning. Although warnings are implemented by Zserio core, schema files that trigger them can be tricky. It's a good idea to test all extensions with these schema files. ||

