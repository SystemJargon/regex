### Regex in Notepad++

It can be used in the example of Find or Replace. Regular Expression is a radio/check box to select first, then enter the criteria to use.

----

### Regular Expression to Replace text

Example: A text file in Notepad++ has various text but also contains without quotes "Category: something here" on a unique line and there maybe say 100 entries of this and ANY TEXT after "Category" we want replaced try this regex.

Use this as the FIND criteria and use the replace text as whatever you want or blank if you wish.

```
\bCategory.*\b
````

----

### Convert a hosts list to EasyList format

In a text editor GUI try this:

(usually Ctrl+H on Windows for 'replace') find string/what: ```^``` replace string/what: ```\1\||``` or ```||``` Enable Regular Expression, Tick Matches newline. Click Replace All

Find ```$``` and replace with ```^``` (can add ```^$important```) - this will add ^$important to the end of each line

----
### Macros in Notepad++ (as an alternative)

Included [shortcuts.xml](https://raw.githubusercontent.com/SystemJargon/regex/main/notepad%2B%2B/shortcuts.xml) file example in this repo. 

Usually lives at ```C:\Users\%username%\AppData\Roaming\Notepad++\shortcuts.xml```
* Be sure to backup/copy your existing shortcuts.xml first.
* Add the contents of the included shortcuts.xml for ease of use with example regex, mostly for domain/url and port numbers replace/stripping.

Strip and Remove text plain or from html contents of;
 
* "h4" opening and closing html tags.
* Text contains any of: hxxps:// hxxps[:]// https[:]// https:// and
* Text contains any of: hxxp:// hxxp[:]// http[:]// http://

----

Why/what hxxp??? 

Why hxxp? So the link is NOT clickable/scanned as such in communications, i.e. email.
