import os
import pyautogui

# Path to the screenshot
screenshot_path = "screenshot.png"

# Check if the screenshot already exists
if os.path.exists(screenshot_path):
    # If it exists, delete it
    os.remove(screenshot_path)
    print("Existing screenshot.png deleted")

# Take a screenshot
screenshot = pyautogui.screenshot()

# Save the screenshot to a file
screenshot.save(screenshot_path)

print("Screenshot saved as screenshot.png")
