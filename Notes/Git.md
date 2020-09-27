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

Находимся в рабочей ветке

```
git rev-list --count HEAD ^develop // 5
git rebase -i HEAD~5
git log -1
git push --force-with-lease origin branchName
```

Можно обойтись одной строкой:

`git rev-list --count develop..HEAD | xargs printf -- 'HEAD~%s' | xargs git rebase -i`

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

## Скачать удаленную ветку, которая была отрибейсена

`git pull --rebase origin NSDPRD-13404`

## Fetching changes from a remote repository
`git fetch remotename` // git fetch origin

## Количество коммитов в ветке

To count the commits for the branch you are on:

`git rev-list --count HEAD`

for a branch:

`git rev-list --count branch`

If you want to count the commits on a branch that are made since you created the branch:

```
git rev-list --count HEAD ^branch
git rev-list --count branch..HEAD
```

Example:

```
git checkout develop
git checkout -b test
<We do 3 commits>
git rev-list --count HEAD ^develop  // or git rev-list --count develop..HEAD
Result: 3
```

## cherry-pick

Для применения коммита e43a6 к текущей ветке выполните команду:

`git cherry-pick e43a6`

## xargs - append each argument with a parameter

The simplest way to prefix arguments is via `printf` in conjunction with the command substitution:

```
mycommand $(printf '-f %s' $"a b c") // l = "a b c"
mycommand $(printf '-%s' "2")
```

Alternatively, the command substitution `$()` can be rewritten by piping to `xargs`:

```
echo "a b c" | xargs printf -- '-f %s\n' | xargs mycommand
echo "a b c" | xargs printf '-f %s\n' | xargs mycommand
```

The command substitution allows to control location of the dynamic arguments in the argument list. For instance, you can prepend, append, or even place the arguments anywhere in between any other fixed arguments to be passed to mycommand.

The xargs approach works best to append arguments to the end, but it requires a more obscure syntax to handle different placement of dynamic arguments among fixed ones.