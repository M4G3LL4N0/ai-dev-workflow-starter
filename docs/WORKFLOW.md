# Branch Workflow

## For every task
1. Start in the repo folder
2. Create a new branch
3. Make only the changes needed
4. Run verification
5. Commit
6. Push
7. Open a pull request

## Commands

Create a new branch:

git checkout -b feature/short-name

Run verification:

./scripts/verify-repo.sh
make verify

Commit changes:

git add .
git commit -m "Describe the change"

Push branch:

git push -u origin feature/short-name

## Rule
Never work directly on main.
