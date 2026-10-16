npx create-react-app propeller-app
cd propeller-app
git init
git add .
git commit -m "Initial commit"
git branch -M master
gh repo create propeller-app --public --source=. --remote=origin --push
git checkout -b update_logo
Invoke-WebRequest -Uri "https://cdn-ikponof.nitrocdn.com/vGqfYAGlOLDkYkJqZhYIYKEsibdbZnkc/assets/images/optimized/rev-f684a87/www.propelleraero.com/wp-content/uploads/2023/05/footer-logo.svg" -OutFile "src/logo.svg"
git add .
git commit -m "Update logo and link"
git push -u origin update_logo
gh pr create --base master --head update_logo --title "Update logo and link" --body "Replaces logo and link"
gh pr merge update_logo --merge

# REPO_URL https://github.com/izxzy-me/propeller-app
# edited src/App.js link manually