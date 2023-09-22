**tmux** stands for terminal multiplexers that allow you to combine togather multiple virtual sessions.


Tmux Objects
------------
There are three main objects in tmux as follows:
* Session is a colleciton of windows.
* Windows a single screen with tmux that can split  into panes.
* Panes a portion of a window that  can run a single  process.
 
Workflow Recommendations
------------------------
1. Use a single client.
2. One project per session.
3. One Vim instance per session.

General cmds
------------
* tmux : create the first session.
* tmux new-session -s sessionname : create a new session called sessionname.
* tmux kill-server : reset the tmux configuration settings.

Session cmds
-----------
* tmux list-seesions: list all the existed windows. 
* tmux switch-client -t sessionname : switch to the target session specified by sessionname. 
* prefix L: Jump back and forth between the last session.
* prefix D : detach from the session.

> default prefix key : C-b

> new prefix key : C-Space

Spliting cmds
-------------
* prefix + % :  split the window horizontally.
* prefix + " : split the window vertically.
* prefix + o : navigate through the panes. 





Config Options
--------------
* prefix + : run a tmux cmds without needing to type tmux before it in status bar. 

* prefix + Z : pane zooming and focus on a single pane. Do the same to unzoom the pane.
