#!/bin/sh
echo "\n# Publishing configuration\n" >> .github/workflows/demo.yml
cat scripts/github_action.txt >> .github/workflows/demo.yml
#git add -A
#git commit -m "Update GitHub Actions configuration"
#git push origin main