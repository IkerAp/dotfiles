eval "$(starship init zsh)"

# Configuración del Historial
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory     # Añadir al historial en lugar de sobrescribirlo
setopt sharehistory      # Compartir historial entre terminales abiertas
setopt histignorealldups # No guardar comandos duplicados
