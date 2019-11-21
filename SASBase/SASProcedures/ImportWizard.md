Import Wizard
==============
Using the Import Wizard is an easy way to import data into SAS. 
The Import Wizard can be found on the drop down file menu. 
Although the Import Wizard is easy it can be time consuming if used repeatedly. 
The very last screen of the Import Wizard gives you the option to save the statements
SAS uses to import the data so that they can be used again. 

<pre><code>
PROC IMPORT OUT= WORK.auto1 DATAFILE= "C:\auto.xls"
        	DBMS=xls REPLACE;
 	SHEET="auto1";
 	GETNAMES=YES;
RUN;
</code></pre>

The *out=* option in the proc import tells SAS what the name should be for the newly-created SAS data file and where to store the data set once it is imported. 
Next the datafile= option tells SAS where to find the file we want to import. 
The *dbms=* option is used to identify the type of file being imported. 
The *replace* option will overwrite an existing file.

To specify which sheet SAS should import use the sheet="sheetname" statement.  
The default is for SAS to read the first sheet.  
Note that sheet names can only be 31 characters long.
The getnames=yes is the default setting and SAS will automatically use the first row of data as variable names.  
If the first row of your sheet does not contain variable names use the getnames=no. 
