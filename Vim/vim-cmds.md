## Vim navigation

* j,k: moving up and down line.
* g, G, 8gg : firt line, last line, like number 
* H: top of the screen
* M: middle of the screen.
* L: bottom of the xcreen.

## Shifting Screen 
* zz vs zt vs zb : curent line to top, middle, bottom
* C+y and C+e : scroll one line 
* C+u and C+d : scroll half-page
* C+b and C+f :  scroll full-page

## Within a Line
* Beginning of line: 0 
* ^ : first char of the string
* $ : end of line.
* g_ : last char of the string.
  
## Extra Fun:

10%, 40% : move to a line by percent of file.

\* vs #: search forth and back of the selection 

e vs E, b vs B, w vs W: word-wise navigation

m vs M: dont be afraid to set marks

\' m: jump to the mark

ff: go to next word starting with f.

,: move forward.

.: move backward.

## Jumpinng within a line.

f<char> : find a character forward in a a line and move to to it.

F<char>: '' '' backward '' ''. 

t<char>: move the cursor forward until the char.

T<char>: move tthe cursor backward until the char. 

;: repeat forward the last command used. 

.: repeat backword the last command.



## Deleting Commands

das: delete the whole sentence.

dap: delete the whole paragraph.

dt): delete until the closing paren

c/word: change unti yourn find the word. 

You have to install **surround**.vim plugin to use the following commands:

dst: delete surrounding tag. 

ds<sth>: delete surrounding sth(e.g. paren, ", ', etc).

cs<char><newchar>	Replace surrounding <character> with <new character>

ys<txt-obj><char>	Surround text-object with <character>

## Indentation:

\>> : indent the line to the right

<< : deden

\>> t the line to the left.

>ap: indent the paragraph to the right.

<ap: indent the paragraph to the left.

=ap: reindent the paragraph(refomat the paragraph).

==: reformat the whole line.

## Replacing

r<char> replace the character under the cursor. 


## **Windows & Tabs**

Opening Windows

:new [filename]	        Open a new window above the current window

:vnew [filename]	Open a new window beside the current window

:split <filename>	Edit the specified file in new window above the current window

:vsplit <filename>	Edit the specified file in new window beside the current window

## Moving Between Windows

<C-w>h,j,k,l	Navigate to the window in the given direction (<C-w>j navigates down)

,K,L	Move the current window in the given direction (<C-w>J moves it down)]

[count]<C-w>-	Decrease the height of the current window by count

[count]<C-w>+	Increase the height of the current window by count

[count]<C-w><	Decrease the width of the current window by count

[count]<C-w>>	Increase the width of the current window by count

<C-w>=   	Equalize the width and height of all windows

## Positioning the Buffer in the Window

zz	Center the current line within the window

zt	Bring the current line to the top of the window

zb	Bring the current line to the bottom of the window

## Tabs: tabs or tabpages are a colleciton of windows in Vim. 

:tabnew	                Open a new tab

:tabedit <filename>	Edit the file with the provided name in a new tab

gt	                Go to next tab (wraps around to beginning)

gT                Go to previous tab (wraps around to end)

<C-w>T	                Break the current window out to a new tab


<C-G> show the filename and its location.
% match the occurrence of the following (),{},[].
<C-I>, <C-O>:  

## VIM Modes
normal mode: <ESC> 
visual mode v
>> visual line mode  V
>> visual block mode  <C-v> 
Note - When you change or add text, Vim will only show the change for the first line of the block, but will then replicate to all lines after you complete the change / insertion and hit <esc>.
insert mode: i

vimrc = vim run commands.
"*y: copy the line in the system register.
"*p: paste the line copied from the system registerjk.

:e . : Show the files and sud-directories of the currnet directory.


## help commands
:h open help

C-] follow links

C-o jump back

:helpgrep search your documentation

:cn / :cp next and previous results

:cwindow display all results in handy window

## Windows Shortcuts.
:h windows hhet general help on windows

p:h CTRL-w list all window-related commands

:sp split horizontally

:vsp split vertically

C-w cycle through windows

C-w h/j/k/l move into window in given direction

C-w H/J/K/L move window in given direction

C-w o focus a single window (close others)



vim -r filename: recover filename that was being edited when system crashed. 

C-l : redraws the screen.
C-r : redraws the screen, removing deleted lines.
