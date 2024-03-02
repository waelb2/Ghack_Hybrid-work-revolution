import pyautogui
import datetime

# Take a screenshot
screenshot = pyautogui.screenshot()

# Get the current date and time
now = datetime.datetime.now()

# Format the date and time as a string
now_str = now.strftime("%Y-%m-%d_%H-%M-%S")

# Save the screenshot to a file
filename = f"screenshot_{now_str}.png"
screenshot.save(filename)

print(f"Screenshot saved as {filename}")
