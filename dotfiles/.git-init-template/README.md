# git template that manages git plugins

> git plugins framework

In order to use this have these lines in your ~/.gitconfig
```
[init]
  templateDir = ~/.git-init-template
```
The template dir has "plugins" directory. Create your plugins there. A plugin is a directory named after the plugin. A plugin contents shall mimic the structure of the templateDir itself. That's an convention. These then will be copied into .git whenever you `git init` (do  git init  at existing project if needed, it works).
Then you may toggle plugins on and off per project. Or set few plugins enabled by default.

Also at your `~/.gitconfig` **all plugins must be referenced**. There plugins may be enabled/disabled globally too:
```
[plugins]
  composer = false
  spellchecker = true
  anything = true
  ...
```
Then you can enable or disable them per project locally config that's `proj/.git/conf` file.
Or use commands `git config plugins.composer true`

> remember, git hooks must be executable

> Turn on debugging: `export _GIT_PLUGIN_DEBUG = true`


