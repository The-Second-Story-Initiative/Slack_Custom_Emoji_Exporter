# Slack Emoji Import Toolkit (Field Manual)

A plain-English guide for downloading and importing custom Slack emoji, step-by-step, from real-world usage.

This doc exists so **you don't have to figure this out again** or explain it over and over. It works. It’s been tested. Run it.

I already have some custom emojis here, so you might want to check the list if you decide to add some

---

## 🔧 What This Does

This is a tiny, effective toolkit that helps you:

* Extract custom emoji from Slack (using DevTools)
* Download them via script (bash + curl)
* Upload them into your own Slack workspace

All without any browser plugins or paid tools.

---

## 📁 Setup: Folder and Files

1. **Create a new project folder**

   * Name it something like `emoji_downloads`

2. Inside that folder, create two files:

   * `emoji_urls.txt`  → This is where you'll paste each emoji name and URL
   * `download_emojis.sh` → This is the bash script that downloads the emojis

Example:

```
emoji_downloads/
├── emoji_urls.txt
├── download_emojis.sh
```

---

## 🕵️ Step-by-Step: Getting Emoji URLs from Slack

1. Go to any Slack workspace where the emojis exist (you don’t need admin permissions)
2. In a channel or DM, **type the emoji codes** into the message prompt (e.g., `:party_parrot:`) so they display
3. Press `F12` or `Ctrl+Shift+I` to open DevTools
4. Click the **Network** tab
5. Refresh the page (`F5`)
6. Scroll through the list at the bottom of Network — you’ll see **actual emoji icons** next to certain entries. Those are the ones you want
7. Right-click the emoji entries and **copy their URLs**
8. Paste into `emoji_urls.txt` in this format:

   ```
   emoji_name https://emoji.slack-edge.com/path/to/image.gif
   ```
9. Make sure the **last line ends with a blank line** (just hit Enter after your final entry)

> 💡 Tip: Typing the emojis into the message box before refreshing makes sure they’re loaded and visible in the Network tab

---

## 🧰 Running the Script

Once your `emoji_urls.txt` is ready:

1. Open the terminal in VS Code (or any terminal)
2. Navigate into your project folder:

   ```bash
   cd path/to/emoji_downloads
   ```
3. **Make sure you're in the correct folder** before running these next commands:

   ```bash
   chmod +x download_emojis.sh
   ./download_emojis.sh
   ```

If all goes well, you’ll now have a folder called:

```
downloaded_emojis/
```

Inside are all your emoji files.

---

## 🤲 Uploading to Slack

1. Go to: `https://<your-workspace>.slack.com/customize/emoji`
2. Click “Add Custom Emoji”
3. Upload your image file manually
4. Name will auto-fill based on the file name

Repeat for each one.

---

## 🧠 Notes and Tips

* File types can be `.gif`, `.png`, `.jpg` — it doesn’t matter as long as they’re small (under 128KB)
* Filenames should use lowercase + underscores: `party_wizard.gif`
* You can rerun the script anytime. It will skip files already downloaded
* If something doesn’t download, check for a formatting issue or missing blank line at the end of your `.txt` file

---

## 📦 Future Upgrades (Optional Ideas)

* Export aliases as a second file (e.g., `:parrot_dance:` could alias `:party_parrot:`)
* Create an emoji `.zip` pack to easily share with teammates or backup your collection
* Use Slack's Admin API (Enterprise only) to auto-upload emoji to a workspace

---

## 🧙‍♂️ Author Notes

This method was field-tested and documented by someone who didn’t want to keep asking how to do it.

Simple. Real. Reusable.

Deploy it. Share it. Forget it.

> "If it works, automate it. If it still works, document it."

— Echo
