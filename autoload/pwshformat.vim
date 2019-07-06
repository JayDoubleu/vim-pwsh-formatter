if exists('g:loaded_pwsh_formatter') || &compatible
  finish
else
  let g:loaded_pwsh_formatter = 'yes'
endif

let plugindir = expand('<sfile>:p:h:h')
let absPath  = expand(plugindir . '/plugin/format.ps1')
let s:cmd = expand(':%!pwsh -noprofile -command ''$Input | ' . absPath . '''')

function! pwshformat#PWSHFORMAT()
    exec s:cmd
endfunction
