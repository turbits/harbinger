<p align="center">
  <img width="150" height="auto" src="harbinger.png">
</p>

<h1 align="center"><b>H A R B I N G E R</b></h1>


An AHK script that provides some quality of life shortcuts.

> [!CAUTION]
> As of Harbinger v2.0.0, Harbinger requires AutoHotkey v2.0+.


Current Version: 2.0.0
<br>
Authored Date: 1.0.0 - OCT-15-2017
<br>
Last Update: 2.0.0 - NOV-29-2025
<br>
<a href="https://github.com/tdwoodman/harbinger/releases" target="_blank"><b>Releases</b></a>
<br>
<br>


## Installation 🧑‍💻

1. Download <a href="https://autohotkey.com/" target="_blank">AutoHotkey</a>
2. <a href="https://github.com/tdwoodman/harbinger/releases" target="_blank">Download Harbinger</a>
3. Double click "harbinger.ahk"
4. You may want to set up as a task so you don't have to manually double-click the script every time you log on. See below


## Set up as a Task 📝

### Automatic via Batch Script 🤖

> [!WARNING]
> You should READ and understand the batch script prior to running. Never run someone elses scripts blindly 👍
> ***This script requires admin privileges***

Run the **create_harbinger_task.bat** script to automatically create a task and put the script in a persistent location, `%LOCALAPPDATA%\HarbingerAHK\harbinger.ahk`. The batch script creates a task that uses basically all defaults, except it runs the script at user logon and once after creating the task.

You can verify the task was created by opening Task Scheduler and looking for "HarbingerAHK_OnLogon" in the task library.

### Manual via Task Scheduler 🙋‍♀️
1. Open Task Scheduler by searching, or by pressing `Windows Key + R`, typing `control schedtasks`, and pressing `Enter`
2. Click `Create Task` in the right sidebar
3. Name it anything you want
4. Check `Run whether user is logged on or not`
5. Click the dropdown called `Configure for` and select `Windows 10`
6. Click the `Triggers` tab at the top
7. Click `New...`
8. Add triggers for whenever you want the script to run. Mine are:
    - At log on
    - On workstation unlock
9. On all triggers, make sure `Enabled` is CHECKED
10. Click the `Actions` tab at the top
11. Make sure the dropdown says `Start a program`
12. Click `Browse...` and browse to harbinger.ahk, click `Open` and `OK`
13. Click the `Conditions` tab at the top
14. UNCHECK `Start the task only if the computer is on AC power`
15. Click the `Settings` tab at the top
16. UNCHECK `Stop the task if it runs longer than`
17. At the bottom in the dropdown you can either select:
    - `Do not start a new instance` or
    - `Stop the existing instance`


## Post-Setup Config 🛠️

The TODO/FIXME/HACK/NOTE comments all use the AHK variable "A_UserName" to insert your username, this uses your Windows logon name.

If you want to change this, you should modify the script (located at `%LOCALAPPDATA%\HarbingerAHK\harbinger.ahk` if you ran the batch script) to use a different name.


## Commands & Hotkeys ⌨️

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


Hotkey | Result
---- | ----
**Arrow Functions** |
Alt+Left | Home (move cursor to beginning of line)
Alt+Right | End (move cursot to end of line)
Alt+Shift+Left | Select+Home (select all text from cursor position to beginning of line)
Alt+Shift+Right | Select+End (select all text from cursor position to end of line)


## Examples ✍️

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
