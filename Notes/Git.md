# Git

## Contribution

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request 😊 😇

## Посмотреть, какие файлы были изменены в текущей ветке

`git diff --name-only develop HEAD`

## rebase

### Объединяем коммиты в один

```
git log -5
git rebase -i HEAD~5
git log -1
git push --force-with-lease origin NSDPRD-12854
```
### rebase основной ветки в текущую рабочую

```
В текщей ветке предварительно объединяем коммиты в один командой rebase
git checkout develop
git pull origin develop
git checkout working-branch
// Мы уже в рабочей ветке:
git rebase develop
Устраняем конфликты, если они есть
git add Исправленные_файлы // если были конфликты
git rebase --continue // если были конфликты
git push --force-with-lease origin working-branch
```

### Скачать удаленную ветку, которая была отрибейсена

`git pull --rebase origin NSDPRD-13404`

### Fetching changes from a remote repository
`git fetch remotename` // git fetch origin