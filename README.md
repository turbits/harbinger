<p align="center">
  <img width="150" height="auto" src="harbinger.png">
</p>

<p align="center"><b>H A R B I N G E R</b></p>

---

An AHK script that provides some quality of life shortcuts. Suggestions welcome.

Current Version: 1.2
<br>
Authored Date: 15-10-2017
<br>
Last Update: 07-06-2020
<br>
Website: <a href="https://trevorwoodman.ca" target="_blank">trevorwoodman.ca</a>
<br>
Latest Release: <a href="https://github.com/tdwoodman/harbinger/releases" target="_blank"><b>Harbinger_v1.2</b></a>
<br>
Old Releases:
<br>
-> <a href="https://github.com/turbits/harbinger/releases/tag/v1.1" target="_blank">Harbinger_v1.1</a>
<br>
-> <a href="https://github.com/turbits/harbinger/releases/tag/v1.0" target="_blank">Harbinger_v1.0</a>

---

##### Installation:

1. Download <a href="https://autohotkey.com/" target="_blank">AutoHotkey</a>
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
**Utility** |
~d | Insert current date DD-MM-YYYY
~df | Insert current date (fancy) DD MMMM YYYY
~t | Insert current time HH:MM:SS
~dt | Insert current datetime DD-MM-YYYY HH:MM:SS
~dft | Insert current datetime (fancy) DD MMMM YYYY HH:MM:SS
**Development** | **Change "USERNAME" var!**
=todo | Insert TODO comment
=fixme | Insert FIXME comment
=hack | Insert HACK comment
=note | Insert NOTE comment

---

<br>

##### ~d / ~df / ~t / ~dt / ~dft
```
11-11-2018
11 November 2018
11:25:05
07-06-2020 13:38:16
07 June 2020 13:39:26
```

##### =todo / =fixme / =hack / =note
```
// XXXX(USERNAME):
```

---

<a href="https://trevorwoodman.ca">
  <img width="250" height="auto" src="t.png" target="_blank">
</a>
