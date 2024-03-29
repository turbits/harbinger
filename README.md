<p align="center">
  <img width="150" height="auto" src="harbinger.png">
</p>

<p align="center"><b>H A R B I N G E R</b></p>

---

An AHK script that provides some quality of life shortcuts.

Current Version: 1.5
<br>
Authored Date: 15-10-2017
<br>
Last Update: 12-10-2021
<br>
<a href="https://github.com/tdwoodman/harbinger/releases" target="_blank"><b>Releases</b></a>
<br>
<br>

---

##### Installation:

1. Download <a href="https://autohotkey.com/" target="_blank">AutoHotkey</a>
2. <a href="https://github.com/tdwoodman/harbinger/releases" target="_blank">Download Harbinger</a>
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
~da | Insert current date DD-MM-YYYY
~df | Insert current date (fancy) DD MMMM YYYY
~dz | Insert current datetime stamp, YYYY-MM-DD HH:MM:SS
~tt | Insert current 24hr time to second HH:MM:SS
~tr | Insert current 24hr time to minute HH:MM
~dt | Insert current datetime DD-MM-YYYY HH:MM:SS
~dft | Insert current datetime (fancy) DD MMMM YYYY HH:MM:SS
**Development** | **Change "USERNAME" var!**
=todo | Insert TODO comment
=fixme | Insert FIXME comment
=hack | Insert HACK comment
=note | Insert NOTE comment

---

Hotkey | Result
---- | ----
**Arrow Functions** |
Alt+Left | Home (move cursor to beginning of line)
Alt+Right | End (move cursot to end of line)
Alt+Shift+Left | Select+Home (select all text from cursor position to beginning of line)
Alt+Shift+Right | Select+End (select all text from cursor position to end of line)

---

# Examples

##### ~da / ~df / ~dz / ~ti / ~dt / ~dft
```
~da: 30-12-2018 / dd-mm-yyyy
~df: 30 December 2018 / dd-Month-yyyy
~dz: 2018-12-30 20:16:58 / yyyy-mm-dd hh:mm:ss
~tt: 20:16:58 / hh:mm:ss
~tr: 20:16 / hh:mm
~dt: 30-12-2018 20:16:58 / dd-mm-yyyy hh:mm:ss
~dft: 30 December 2018 20:16:58 / dd Month yyyy hh:mm:ss
```

##### =todo / =fixme / =hack / =note
```
// XXXX(USERNAME):
```

---
