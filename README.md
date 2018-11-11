<p align="center">
  <img width="150" height="auto" src="harbinger.png">
</p>

<p align="center"><b>H A R B I N G E R</b></p>

---

The autohotkey script to rule all autohotkey scripts.

Current Version: 1.1
<br>
Authored Date: 15-10-2017
<br>
Last Update: 11-11-2018
<br>
Website: <a href="https://trevorwoodman.ca">trevorwoodman.ca</a>
<br>
Tweeter: <a href="https://twitter.com/tdwoodman">@tdwoodman</a>
<br>
Latest Release: <a href="https://github.com/tdwoodman/harbinger/releases"><b>Harbinger_v1.1</b></a>
<br>
Old Releases:
<br>
-> <a href="https://github.com/tdwoodman/harbinger/releases/download/v1.0/harbinger.ahk">Harbinger_v1.0</a>

---

##### Installation:

1. Download <a href="https://autohotkey.com/">AutoHotkey</a>
2. Download Harbinger
3. Double click "harbinger.ahk"

---

##### Task Scheduling:
1. Open Task Scheduler by pressing `Windows Key + R`, typing `control schedtasks`, and pressing `Enter`.
2. Click `Create Task` in the right sidebar.
3. Name it anything you want
4. Check `Run whether user is logged on or not`
5. Check `Run with highest privileges`
6. Click the dropdown called `Configure for` and select `Windows 10`
7. Click the `Triggers` tab at the top
8. Click `New...`
9. Add triggers for whenever you want the script to run. Mine are:
    - At log on
    - At startup
    - On workstation unlock
10. On all triggers, make sure `Enabled` is CHECKED.
11. Click the `Actions` tab at the top
12. Make sure the dropdown says `Start a program`
13. Click `Browse...` and browse to harbinger.ahk, click `Open` and `OK`
14. Click the `Conditions` tab at the top
15. UNCHECK `Start the task only if the computer is on AC power`
16. Click the `Settings` tab at the top
17. UNCHECK `Stop the task if it runs longer than`
18. At the bottom in the dropdown you can either select:
    - `Do not start a new instance` or
    - `Stop the existing instance`

---

##### Config:

1. Open harbinger.ahk with your favourite editor
2. Replace the "USERNAME" variable in the *CONFIG* part of the .ahk script.

---
  Command | Result
  ---- | ----
  **Caret** |
  Ctrl Left | Caret to Home
  Ctrl Right | Caret to End
  Ctrl Up | Caret to PageUp
  Ctrl Down | Caret to PageDown
  **Selection** |
  Ctrl Shift Left | Caret Select to Home
  Ctrl Shift Left | Caret Select to End
  Ctrl Shift Up | Caret Select to PageUp
  Ctrl Shift Down | Caret Select to PageDown
  **Utility** |
  ~d | Insert current date DD-MM-YYYY
  ~t | Insert current time HH:MM:SS
  **Development** | **Change "USERNAME" var!**
  =todo | Insert TODO comment
  =fixme | Insert FIXME comment
  =hack | Insert HACK comment
  =note | Insert NOTE comment
  =hcom | Insert file head comment block

---

<br>

##### ~d / ~t
```
11-11-2018
11:25:05
```

##### =todo/=fixme/=hack/=note
```
// XXXX(USERNAME):
```

##### =hcom
```
/* ==================================================
:  File: FILENAME
:  Date: DD-MM-YYYY
:  Revision: 1.0.0
:  Author: USERNAME
:  Notice: Copyright (C) YYYY by USERNAME
   ================================================== */
```

---

<a href="https://trevorwoodman.ca">
  <img width="250" height="auto" src="tdw.png" title="My website">
</a>
