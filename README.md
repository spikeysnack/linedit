# linedit -- a one line editor


#### 1.2 12 Jul 2017 beta 
#### Free for all non-commercial purposes.
#### Copyright 2017 Chris Reid <http://spikeysnack@gmail.com>

### Usage: 

    linedit <filename> <line#>
         
             information options:

            -c   print line in diagnostic mode
            -h   show this helpful message
            -i   show instructions
            -l   show licensing info
            -q   do not show results
            -v   show version
    
            editing options:
    
            -a   append  a line to file
            -p   prepend a line to file

            Example:
 
                 `linedit myfile.txt 15`


### Instructions 

<pre>
    linedit		<filename>		<line#>
    
    linedit -c 	<filename>		<line#>
    
    linedit		<filename>
    
    linedit -a 	<filename>
    
    linedit -p 	<filename>

    linedit -h
</pre>

Type the filename and line number to edit.

The line will be echoed in light blue.

The line text will be placed after an edit: prompt.

Navigate with  <right>  <left>  <backspace>  <delete>  keys and edit.

Type <return> to change the line in the file.

Type <Ctl>-<C> to abandon the edit.

If the line is not changed, no change is printed.

If the line is changed, a visual representation of the line is printed
   with spaces, tabs, strings, and escaped characters highlighted in color.
   The previous line is saved to <filename>.le with a timestamp.
 
A multi-line grep command is output to show line and two lines before and after.

If <line#> is 0 the line will be prepended.

If <line#> is <total+1> the edited line will be appended.


#### Files

    /usr/local/bin/linedit
    /usr/local/bin/colorline
   


### License

    linedit -- a one line editor
    
    Author: Chris Reid
    
    License: Free for all non-commercial purposes.
    
    License URL: https://creativecommons.org/licenses/by-sa/3.0/
    
    Modification: allowed but original attribution must be included.
    
    You are free to:
    
    Share — copy and redistribute the material in any medium or format
    
    Adapt — remix, transform, and build upon the material for any purpose,
    even commercially.
    
    Attribution — You must give appropriate credit,
    provide a link to the license, and indicate if changes were made.
    You may do so in any reasonable manner,
    but not in any way that suggests the licensor endorses you or your use.
    
    ShareAlike — If you remix, transform, or build upon the material,
    you must distribute your contributions under the same license
    as the original.
    
    Revocation — The licensor cannot revoke these freedoms as
    long as you follow the license terms.
    
    No Additional Restrictions — You may not apply legal terms
    or technological measures that legally restrict others
    from doing anything the license permits.

**--- Edit in color, one line at a time! ---**
