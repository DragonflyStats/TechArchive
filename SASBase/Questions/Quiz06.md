
Which one of the following statements is true regarding the SAS automatic _ERROR_ variable?

- A. The _ERROR_ variable contains the values 'ON' or 'OFF'.
- B. The _ERROR_ variable contains the values 'TRUE' or 'FALSE'.
- C. The _ERROR_ variable is automatically stored in the resulting SAS data set.
- D. The _ERROR_ variable can be used in expressions or calculations in the DATA step.

<hr>

You can write the values of SAS automatic variables to the SAS log to help you analyze your program and data. Your code can test the values of SAS automatic variables to direct conditional execution of DATA step statements. 
Automatic variables are temporary and SAS does not store them in the data sets it creates. To save the value of an automatic variable, assign its value to a data set variable. 

When to use: 
Always review the SAS log to look for notes indicating that _ERROR_ was set to 1. 
Set _ERROR_ to 1 in your code for errors you want flagged in the SAS log. FIRST.variable Indicates whether the data values being processed are from the first observation in a BY group where: variable is the BY-group variable to examine.
