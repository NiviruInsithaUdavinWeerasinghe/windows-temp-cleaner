# Windows Temp Cleaner

A lightweight Windows Batch script that helps free up disk space by removing temporary files from common Windows temporary directories.

## Features

- 🔒 Automatically requests Administrator privileges
- ✅ Asks for confirmation before deleting files
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
4. Enter:

```
Y or y
```

to begin cleaning.

Or enter:

```
N or n
```

to cancel.

---

## Files Cleaned

| Folder | Purpose |
|---------|---------|
| `C:\Windows\Temp` | Windows temporary files |
| `%TEMP%` | Current user's temporary files |
| `C:\Windows\Prefetch` | Windows Prefetch cache |

---

## Requirements

- Windows 10 or Windows 11
- Administrator privileges

---

## Notes

- Some files currently in use by Windows cannot be deleted. This is normal and does not indicate a problem.
- The script ignores files that Windows has locked.

---

## License

This project is released under the MIT License.
