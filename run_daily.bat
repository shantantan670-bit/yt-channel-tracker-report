@echo off
cd /d "%~dp0"
node src\fetch.js >> logs\daily.log 2>&1
node src\report.js >> logs\daily.log 2>&1
copy /Y reports\index.html docs\index.html >> logs\daily.log 2>&1
git add docs >> logs\daily.log 2>&1
git commit -m "Update report" >> logs\daily.log 2>&1
git push origin master >> logs\daily.log 2>&1
