oh-my-posh.exe init pwsh --config "~/.config/powershell/theme.omp.json" | Invoke-Expression

# Get terminal icons
Import-Module -Name Terminal-Icons

# Functions
Function mkcd {
  [CmdletBinding()]
   param(
      [Parameter(Mandatory = $true)]
      $Path
   )

   New-Item -Path $Path -ItemType Directory

   Set-Location -Path $Path
}


Function ls {
  ls -Force
}

Function ll {
  ls -Force
}

Function la {
  Get-ChildItem | Format-Wide -Force
}

Function src {
  & ~\.config\powershell\Profile.ps1
}

Function root {
  cd ~
}

Function dev {
  cd ~/Dev
}

Function config {
  cd ~/.config
}

Function nr() {
  npm run
}

Function folder($path) {
  if (Test-Path $path) {
    echo "Dev folder exists"
  } else {
    mkdir $path
  }
}

Function hello{
  echo "Correct config"
}

# Alias
Set-Alias cc clear
Set-Alias touch New-Item
Set-Alias g git
