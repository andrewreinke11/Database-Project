# Manufacturing Database Documentation

A simple database for documenting the components and personnel that went into manufacturing various products.

## Requirements

- **Oracle SQL** (other versions don't work due to the lack of PL/SQL)

## Execution Order

The recommended order of execution is:

1. **Create the tables** (absolutely required first)
2. **Populate the data** (in the order laid out to ensure constraints are met)
3. **Create the views**
4. **Create the types**
5. **Create the functions** (for making reports)

## Important Notes

- The tables **must** be created first
- You don't necessarily have to use the provided sample data
- The functions depend on the type definitions and views, so they must be last
- Each type definition must be executed separately
- The code assumes you execute types in order