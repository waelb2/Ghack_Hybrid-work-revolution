# Ghack_Hybrid-work-revolution

## Getting Started

### 1-Generate a Personal Access Token (PAT):
- In your GitHub Account, navigate to the settings.
* Look for the "Developer settings" and then "Personal access tokens" section.
+ Generate new token and copy it.

### 2-Set Up Git Remote with Token:
- Open Git CLI and navigate to the directory where you want to clone the repo.
- Use the `git init` to intialise the repo.
- Use the `git remote` add command to add the remote URL with the token.
```bash 
git remote add origin  https://github.com/<your_username>/Ghack_Hybrid-work-revolution
```
- And then : 
```bash 
git remote set-url origin https://<your_token>@github.com/<your_username>/Ghack_Hybrid-work-revolution.git
```

### 3-Clone the repo:
- Use the `git clone` command to clone the repo to your local environement.
```bash 
git clone git@github.com:<username>/Ghack_Hybrid-work-revolution.git
```

W salam.
