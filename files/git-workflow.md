# SafeDealz Git workflow

SafeDealz is one Git repository containing backend, all three Flutter apps, project files and Obsidian memory, and the React admin application.

Remote repository: [arbaan-max/SafeDealz](https://github.com/arbaan-max/SafeDealz)

## Get the complete project on another computer

```bash
git clone https://github.com/arbaan-max/SafeDealz.git
cd SafeDealz
```

One clone retrieves all four top-level project folders.

## Push later changes

Run from the SafeDealz root:

```bash
git status
git add .
git commit -m "Describe the completed change"
git push
```

## Receive remote changes

```bash
git pull --rebase
```

Local `.env` files, dependencies, build output, IDE state, and machine-specific Obsidian workspace state are excluded by the root `.gitignore`.
