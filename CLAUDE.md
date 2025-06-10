# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Vim plugin that provides PowerShell code formatting functionality. It acts as a wrapper around PowerShell's PSScriptAnalyzer `Invoke-Formatter` function.

## Architecture

The plugin consists of three main components:

1. **plugin/pwshformat.vim** - Defines the `:PWSHFORMAT` command
2. **autoload/pwshformat.vim** - Contains the main function that pipes the buffer content through PowerShell
3. **plugin/format.ps1** - PowerShell script that receives stdin, accumulates it, and formats using `Invoke-Formatter`

## Key Implementation Details

- The plugin uses Vim's filter command (`:%!`) to pipe the entire buffer through the PowerShell formatter
- The PowerShell script at plugin/format.ps1:99-100 currently uses default `Invoke-Formatter` settings (the custom settings defined in lines 17-97 are commented out)
- The plugin sets `shell=sh` to ensure consistent behavior across platforms (autoload/pwshformat.vim:7)

## Dependencies

- PowerShell Core must be installed and available as `pwsh` in PATH
- PSScriptAnalyzer module must be installed: `pwsh -Command Install-Module -Name PSScriptAnalyzer`

## Development Notes

- To enable custom formatting rules, uncomment line 99 and comment line 100 in plugin/format.ps1
- The custom settings include various PSScriptAnalyzer rules for code quality and style consistency
- No automated tests are currently present in the repository