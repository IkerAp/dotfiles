eval "$(starship init zsh)"

# Configuración del Historial
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory     # Añadir al historial en lugar de sobrescribirlo
setopt sharehistory      # Compartir historial entre terminales abiertas
setopt histignorealldups # No guardar comandos duplicados

#Alias conexión Raspberry
alias rpi-on='nmcli connection up "Raspberry" && vncviewer 169.254.0.2 &'
alias rpi-off='nmcli connection down "Raspberry"'

fastfetch
