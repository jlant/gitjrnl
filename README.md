# gitjrnl

*Simple journaling with git*

A simple journaling tool that uses the power of git to easily make entries,
view entries, and search for entries. Entries are committed to the journal's
history and saved to a journal.txt file.

## Usage
```
$ ./gitjrnl.sh "My first journal entry! Trying to make journaling a habit."
$ ./gitjrnl.sh "Worked on #mycoolproject with @someawesomedeveloper."
$ git log --pretty=format:'%Cgreen%ad %Creset: %s' --date=short
2019-08-23 : My first journal entry! Trying to make journaling a habit.
2019-08-23 : Worked on #mycoolproject with @someawesomedeveloper.
$ git log --grep="#mycoolproject"
2019-08-23 : Worked on #mycoolproject with @someawesomedeveloper.
```

## Notes 
To easily search for and find journal entries of interest, the following 
tags are used in entries:
```
#project-name
@someone
*something-important
```

For simple and short log messages, he following git alias is set in the local repo:
```
$ git config --local alias.lg "log --pretty=format:'%Cgreen%ad %Creset: %s' --date=short"
```

## Examples

Making a new entry:
```
$ ./gitjrnl.sh "My first journal entry.  This journaling thing is pretty nifty and useful"
```

Viewing entries using git log with pretty formatting:
```
$ git log --pretty=format:'%Cgreen%ad %Creset: %s' --date=short 
```

Setting a git alias of `git lg` and Viewing entries:
```
$ git config --local alias.lg "log --pretty=format:'%Cgreen%ad %Creset: %s' --date=short"
$ git lg
```

Searching for entries that mention a particular project by piping to grep:
```
$ git lg | grep "#project"
```

Searching for entries that mention a particular project by using git --grep option:
```
$ git lg --grep="#project"
```

Searching for entries on a particular date by piping to grep:
```
$ git lg | grep "2019-08-23"
```

