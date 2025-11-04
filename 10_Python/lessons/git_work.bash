Вначале создать профиль на GitHub: -> нужен URL

…or create a NEW repository on the command line
echo "# NAME" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/YOUR_REPO_URL
git push -u origin main


…or push an EXISTING repository from the command line
git remote add origin https://github.com/YOUR_REPO_URL
git branch -M main
git push -u origin main


# узнать статус изменений актуальный
git status
# добавить статус в видимую зону
git add FILENAME (or -A - это все) # тут добавить то что хотим зафиксировать
# зафиксировать изменений с описанием
git commit -m "TYPE DESCRIPTION"
# получить журнал записи
git log
# отправить на удаленный репозиторий
git push
# получить актуальную версию из репозитория
git pull
# создать ветку и перейти туда
git checkout -b test_branch
# удалить ветку 
git branch -d test_branch
