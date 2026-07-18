#!/bin/bash
git init
git branch -M main
git remote remove origin
git remote add origin https://github.com/1jeffbarrera-bit/my-new-project.git
git add .
git commit -m "Initialize project and add project documentation"
git push -u origin main
