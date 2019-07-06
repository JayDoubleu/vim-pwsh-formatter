# vim-pwsh-formatter
Poor man's vim powershell code formatter.

Uses https://github.com/PowerShell/PSScriptAnalyzer `Invoke-Formatter` function to format buffer.

## System Requirements:
* Powershell Core : https://github.com/PowerShell/PowerShell#get-powershell
* PSScriptAnalyzer : https://github.com/PowerShell/PSScriptAnalyzer

```shell
pwsh -Command Install-Module -Name PSScriptAnalyzer
```

## Installation:
[vim-plug](https://github.com/junegunn/vim-plug) 

```
  Plug 'JayDoubleu/vim-pwsh-formatter'
```

## Usage : 
From vim:
```
:PWSHFORMAT
```

Or map to key:
```
autocmd FileType ps1 noremap <F5> :PWSHFORMAT<CR>
```
## Recommended plugins

* [vim-polyglot](https://github.com/sheerun/vim-polyglot) for syntax highlighting 
* [coc-powershell](https://github.com/yatli/coc-powershell) for Intellisense/Completions, REPL etc.
