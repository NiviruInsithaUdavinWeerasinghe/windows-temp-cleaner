<p align="center">
  <img src="https://github.com/user-attachments/assets/6e54bf18-e97a-4132-b014-b53dcd1ea66c" width="180" alt="Windows Temp Cleaner Icon">
</p>

<h1 align="center">Windows Temp Cleaner</h1>

<p align="center">
A lightweight Windows Batch script that helps free up disk space by removing temporary files from common Windows temporary directories.
</p>

---

## Features

- 🔒 Automatically requests Administrator privileges
- ✅ Simple confirmation prompt (`Y`, `y`, `N`, or `n`)
- 🗑 Cleans:
  - `C:\Windows\Temp`
  - `%TEMP%` (Current user's Local Temp folder)
  - `C:\Windows\Prefetch`
- 🔇 Suppresses unnecessary error messages
- ✔ Simple one-click execution

---

## How It Works

1. Checks if the script is running as Administrator.
2. If not, it automatically restarts itself with Administrator privileges.
3. Displays the folders that will be cleaned.
4. Prompts the user for confirmation.
5. Deletes files and folders inside:
   - Windows Temp
   - User Temp
   - Windows Prefetch
6. Displays a completion message.

---

## Usage

1. Download `Clean.bat`.
2. Double-click the file.
3. Accept the Administrator prompt.
4. Enter one of the following:

```text
Y
```

or

```text
y
```

to begin cleaning.

Enter:

```text
N
```

or

```text
n
```

to cancel.

---

## Pin to the Start Menu (Optional)

You can make the script behave like a normal Windows application.

1. Right-click `Clean.bat`.
2. Click **Create shortcut**.
3. Press **Win + R** to open the **Run** dialog.
4. Paste the following and press **Enter**:

```text
%AppData%\Microsoft\Windows\Start Menu\Programs
```

5. Paste the shortcut into the folder that opens.
6. Right-click the shortcut and select **Properties**.
7. Click **Change Icon...**
8. Browse to the included `.ico` file and select it.
9. Click **OK**, then **Apply**.
10. Open the Start Menu, search for **Windows Temp Cleaner**, then right-click it and choose **Pin to Start** or **Pin to Taskbar**.

---

## Custom Icon

A custom `.ico` file is included with this repository.

Use it when changing the shortcut's icon to give the script a cleaner, more professional appearance.

---

## Files Cleaned

| Folder | Purpose |
|---------|---------|
| `C:\Windows\Temp` | Windows temporary files |
| `%TEMP%` | Current user's Local Temp folder |
| `C:\Windows\Prefetch` | Windows Prefetch cache |

---

## Requirements

- Windows 10 or Windows 11
- Administrator privileges

---

## Notes

- Some files currently in use by Windows cannot be deleted. This is normal and does not indicate a problem.
- The script safely skips files that Windows has locked.

---

## License

This project is released under the MIT License.
```
