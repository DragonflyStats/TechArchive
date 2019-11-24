6.2 Exporting ascii data

Type help save to see how data is exported from Matlab to disk. To save the foo data in a file called foo2.dat, follow the commands below.

>> help save

 SAVE Save workspace variables to disk. 
    SAVE fname saves all workspace variables to the binary "MAT-file"
    named fname.mat. The data may be retrieved with LOAD. Omitting the
    filename causes SAVE to use the default filename "matlab.mat".
 
    SAVE fname X  saves only X.
    SAVE fname X Y Z  saves X, Y, and Z. The wildcard '*' can be used to
    save only those variables that match a pattern.
 
    SAVE fname X Y Z  -ASCII  uses 8-digit ASCII form instead of binary.
    SAVE fname X Y Z  -ASCII -DOUBLE  uses 16-digit ASCII form.
    SAVE fname X Y Z  -ASCII -DOUBLE -TABS  delimits with tabs.
    SAVE fname X Y Z  -V4  saves a MAT-file that MATLAB 4 can LOAD.
    SAVE fname X Y Z  -APPEND  adds the variables to an existing MAT-file.
 
    Use the functional form of SAVE, such as SAVE('fname','var1','var2'),
    when the filename or variable names are stored in strings.
 
    See also LOAD, DIARY, FWRITE, FPRINTF.

>> save foo2.dat foo -ascii
