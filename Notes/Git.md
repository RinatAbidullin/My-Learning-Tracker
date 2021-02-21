# Git

## Первоначальная настройка

```bash
git config --global user.name "John Doe"`
git config --global user.email johndoe@example.com
```

Sublime Text
```bash
git config --global core.editor "subl -n -w"
ln -sv "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```

Проверка настроек
```bash
git config --list
```

## Contribution

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request 😊 😇

## Посмотреть, какие файлы были изменены в текущей ветке

```bash
git diff --name-only develop HEAD
```

## rebase

### Объединяем коммиты в один

Находимся в рабочей ветке

```bash
git rev-list --count HEAD ^develop # 5
git rebase -i HEAD~5
git log -1
git push --force-with-lease origin branchName
```

Можно обойтись одной строкой:

```bash
git rev-list --count develop..HEAD | xargs printf -- 'HEAD~%s' | xargs git rebase -i
```

### rebase основной ветки в текущую рабочую

```bash
# В текщей ветке предварительно объединяем коммиты в один командой rebase
git checkout develop
git pull origin develop
git checkout working-branch
# Мы уже в рабочей ветке:
git rebase develop
# Устраняем конфликты, если они есть
git add Исправленные_файлы # если были конфликты
git rebase --continue # если были конфликты
git push --force-with-lease origin working-branch
```

## Скачать удаленную ветку, которая была отрибейсена

```bash
git pull --rebase origin NSDPRD-13404
```

## Fetching changes from a remote repository
```bash
git fetch remotename # git fetch origin
```

## Количество коммитов в ветке

To count the commits for the branch you are on:

```bash
git rev-list --count HEAD
```

for a branch:

```bash
git rev-list --count branch
```

If you want to count the commits on a branch that are made since you created the branch:

```bash
git rev-list --count HEAD ^branch
git rev-list --count branch..HEAD
```

Example:

```bash
git checkout develop
git checkout -b test
# <We do 3 commits>
git rev-list --count HEAD ^develop  # or git rev-list --count develop..HEAD
# Result: 3
```

## cherry-pick

Для применения коммита `e43a6` к текущей ветке выполните команду:

```bash
git cherry-pick e43a6
```

## xargs - append each argument with a parameter

The simplest way to prefix arguments is via `printf` in conjunction with the command substitution:

```bash
mycommand $(printf '-f %s' $"a b c") # l = "a b c"
mycommand $(printf '-%s' "2")
```

Alternatively, the command substitution `$()` can be rewritten by piping to `xargs`:

```bash
echo "a b c" | xargs printf -- '-f %s\n' | xargs mycommand
echo "a b c" | xargs printf '-f %s\n' | xargs mycommand
```

The command substitution allows to control location of the dynamic arguments in the argument list. For instance, you can prepend, append, or even place the arguments anywhere in between any other fixed arguments to be passed to mycommand.

The xargs approach works best to append arguments to the end, but it requires a more obscure syntax to handle different placement of dynamic arguments among fixed ones.

## Добавить файл в последний коммит

```bash
git add the_left_out_file # Добавляем измененные файлы
git commit --amend --no-edit
```

## Поиск в истории репозитория

```bash
git log -S someString
git log -p -S 'some string'
```

This will find any commit that added or removed the string `someString`. Here a few options:

`-p`: will show the diffs. If you provide a file (`-p file`), it will generate a patch for you.
`-G`: looks for differences whose added or removed line matches the given regexp, as opposed to `-S`, which "looks for differences that introduce or remove an instance of string".
`--all`: searches over all branches and tags; alternatively, use `--branches[=<pattern>]` or `--tags[=<pattern>]`

## Переименование ветки

If you want to rename a branch while pointed to any branch, do:

```bash
git branch -m <oldname> <newname>
```

If you want to rename the current branch, you can do:

```bash
git branch -m <newname>
```

A way to remember this is `-m` is for "move" (or `mv`), which is how you rename files. Adding an alias could also help. To do so, run the following:

```bash
git config --global alias.rename 'branch -m'
```

If you are on Windows or another case-insensitive filesystem, and there are only capitalization changes in the name, you need to use `-M`, otherwise, git will throw branch already exists error:

```bash
git branch -M <newname>
```

## Обновление .gitignore

```bash
git add .gitignore
git commit -m "Update .gitignore"
git rm -r --cached .
git add .
git commit -m "Update repository with new .gitignore"
```

* `rm` is the remove command
* `-r` will allow recursive removal
* `–cached` will only remove files from the index. Your files will still be there.
* The `.` indicates that all files will be untracked. You can untrack a specific file with `git rm --cached foo.txt`

The `rm` command can be unforgiving. If you wish to try what it does beforehand, add the `-n` or `--dry-run` flag to test things out.

## Удалить последний коммит

```bash
git rebase -i HEAD~1
# Выбрать d (delete)
```

## How to ignore Icon? in git

The best place for this is in your global gitignore configuration file. You can create this file, access it, and then edit per the following steps:

```bash
git config --global core.excludesfile ~/.gitignore_global
vim ~/.gitignore_global
```
To insert `^M` (`\r\r\`) do:

* press `i` to enter insert mode

* type `Icon` on a new line

* while on the same line, `ctrl + v`, `enter`, `ctrl + v`, `enter`

* press `esc`, then `shift + ;` then type `wq` then hit `enter`

## Удаление ветки

### Delete Remote Branch

```bash
git push -d <remote_name> <branch_name> # <remote_name> = origin
git push --delete <remote_name> <branch_name>
git push <remote_name> :<branch_name>
```

Note that in most cases the remote name is `origin`.

Don't forget fetch changes after deleting the remote branch on the server:

```bash
git fetch --all --prune
```

### Delete Local Branch

```bash
git branch --delete <branch>
git branch -d <branch> # Shorter version
git branch -D <branch> # Force-delete un-merged branches
```

