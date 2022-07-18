# Coding Guidelines

## GitHub

1. Create a reference branch with the original code and use main branch for the implementation
2. Commit the changes with proper commit message. Don't just write "Updated Readme", 
   instead write what changes were done. 
3. **Always pull before commit**
4. **Immediately push after commit**
5. Don't accumulate changes keep commiting and pushing increamental changes 
   with proper commit message.
6. In case of any issues during commit, push or pull please contact Keerthi Sagar (ks.kokkiligadda@gmail.com)


## Coding

1. All new changes and implementations should be modular and placed under ifdefines. 
   We should be able to run simulations either with the original code or the modified code
   based on the defines
2. Add a three letter signature with # at the start and end of all modifications   
   Also add a short description about the changes and their purpose.
3. Add a header at the top of new files (**Format to be updated**)
4. Use TODO and three letter signature to indicate pending changes with proper description   
5. Use FIXME and three letter signature to indicate all temporary changes and bugs  
6. Use proper and consistent indentation throughout the simulator. 4 spaces are preferred but 
   if the original simulator code uses different indentation then please use the same.
7. Use ifdefine debug prints for additional debug prints

### Example
```C++
   // #TEJ: Updating counter logic 
   ...
   // TODO #TEJ: Add miss counter
   ...
   // FIXME #TEJ: Use configuration instead of hardcoded value
```
