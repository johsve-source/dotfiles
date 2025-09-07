# Tmux Tangentbordsgenvägar - Nordic ISO Layout (Keychron K2 V2)

## 🎯 Nordic-optimerade Keybinds

### Prefix: `Ctrl+A` → sedan tangent

| Kommando | Tangent | Beskrivning | Nordic Fördel |
|----------|---------|-------------|---------------|
| **PANEL NAVIGERING** |
| `Ctrl+A` → `w` | ↑ | Välj övre panel | Gaming WASD |
| `Ctrl+A` → `a` | ← | Välj vänster panel | Gaming WASD |
| `Ctrl+A` → `s` | ↓ | Välj nedre panel | Gaming WASD |
| `Ctrl+A` → `d` | → | Välj höger panel | Gaming WASD |
| | | | |
| `Ctrl+A` → `h` | ← | Vänster (vim-stil) | Alternativ |
| `Ctrl+A` → `j` | ↓ | Ned (vim-stil) | Alternativ |
| `Ctrl+A` → `k` | ↑ | Upp (vim-stil) | Alternativ |
| `Ctrl+A` → `l` | → | Höger (vim-stil) | Alternativ |
| **PANEL HANTERING** |
| `Ctrl+A` → `f` | 🔧 | Dela horisontellt | Nära Ctrl+A |
| `Ctrl+A` → `v` | 🔧 | Dela vertikalt | Nära Ctrl+A |
| `Ctrl+A` → `q` | ❌ | Döda panel | Nära Ctrl+A |
| `Ctrl+A` → `z` | 🔍 | Zooma/avzooma | Nära Ctrl+A |
| **PANEL STORLEKSÄNDRING** |
| `Ctrl+A` → `W` | ↑ | Större uppåt | Shift+WASD |
| `Ctrl+A` → `A` | ← | Större vänster | Shift+WASD |  
| `Ctrl+A` → `S` | ↓ | Större nedåt | Shift+WASD |
| `Ctrl+A` → `D` | → | Större höger | Shift+WASD |
| | | | |
| `Ctrl+A` → `←` | ← | Storleksändra vänster | Pilknappar |
| `Ctrl+A` → `↓` | ↓ | Storleksändra ned | Pilknappar |
| `Ctrl+A` → `↑` | ↑ | Storleksändra upp | Pilknappar |
| `Ctrl+A` → `→` | → | Storleksändra höger | Pilknappar |
| **FÖNSTER** |
| `Ctrl+A` → `t` | 📄 | Nytt fönster (Tab) | Nära Ctrl+A |
| `Ctrl+A` → `r` | ✏️ | Byt namn på fönster | Nära Ctrl+A |
| `Ctrl+A` → `x` | ❌ | Döda fönster | Nära Ctrl+A |
| **SYSTEM** |
| `Ctrl+A` → `e` | 🚪 | Koppla från (Exit) | Nära Ctrl+A |
| `Ctrl+A` → `c` | 🧹 | Rensa historik | Nära Ctrl+A |
| `Ctrl+A` → `R` | ⚙️ | Ladda om config | Shift+R |

### Direktkommandon (utan prefix)
| Tangent | Funktion |
|---------|----------|
| `Ctrl+L` | Rensa terminal |

---

## 🎮 Designfilosofi för Nordic Layout

### WASD Gaming-stil
- **W** = Upp (som i spel)
- **A** = Vänster (som i spel) 
- **S** = Ned (som i spel)
- **D** = Höger (som i spel)

### Logiska Bokstavsval
- **F** = horisontell split (**F**rame)
- **V** = **V**ertikal split  
- **Q** = **Q**uit/Kill pane
- **T** = ny **T**ab/window
- **R** = **R**ename
- **X** = e**X**it/kill window
- **E** = **E**xit/detach
- **C** = **C**lear
- **Z** = **Z**oom

### Nordic ISO Fördelar
1. **Alla tangenter nära Ctrl+A** - minimal handrörelse
2. **Inga Alt-kombinationer** - undviker konflikt med terminal/OS
3. **WASD bekant för gamers** - intuitiv navigering
4. **Shift+WASD för resize** - logisk utvidgning
5. **Enkla bokstäver** - lätta att komma ihåg

---

## 💡 Nordic-specifika Tips

### Tangentbordsplacering (K2 V2 Nordic)
```
Ctrl+A → [Tab] [Q] [W] [E] [R] [T]
         [A] [S] [D] [F]
         [Z] [X] [C] [V]
```

### Snabba Arbetsflöden
1. **Ny panel höger**: `Ctrl+A` → `f`
2. **Ny panel under**: `Ctrl+A` → `v` 
3. **Navigera WASD**: `Ctrl+A` → `w/a/s/d`
4. **Resize med Shift**: `Ctrl+A` → `W/A/S/D`
5. **Zooma**: `Ctrl+A` → `z`

### Muskelminne
- **Gaming-vana**: WASD för rörelse känns naturligt
- **Vim-bakåtkompatibilitet**: hjkl fungerar fortfarande
- **Logiska förkortningar**: Varje tangent har mening

---

## 📋 Standard Tmux Kommandon (med `Ctrl+A` prefix)

### Fönsterhantering
| Tangent | Kommando |
|---------|----------|
| `c` | Skapa nytt fönster |
| `,` | Byt namn på aktuellt fönster |
| `n` | Nästa fönster |
| `p` | Föregående fönster |
| `0-9` | Gå till fönster nummer |
| `&` | Döda aktuellt fönster |

### Panelhantering  
| Tangent | Kommando |
|---------|----------|
| `"` | Dela horisontellt (standard) |
| `%` | Dela vertikalt |
| `x` | Döda aktuell panel |
| `{` | Flytta panel vänster |
| `}` | Flytta panel höger |
| `q` | Visa panelnummer |

### Sessionshantering
| Tangent | Kommando |
|---------|----------|
| `d` | Koppla från klient |
| `s` | Lista och växla sessioner |
| `$` | Byt namn på session |
| `)` | Nästa session |
| `(` | Föregående session |

### Kopiering och Klistring
| Tangent | Kommando |
|---------|----------|
| `[` | Gå in i kopieringsläge |
| `]` | Klistra in från buffer |
| `#` | Lista alla buffers |
| `=` | Välj buffer att klistra |

### Hjälp och Information
| Tangent | Kommando |
|---------|----------|
| `?` | Lista alla tangentbindningar |
| `w` | Lista och växla fönster |
| `i` | Visa fönsterinformation |
| `t` | Visa stor klocka |

---

## 🚀 Snabbkommandon (utan prefix)

| Kombination | Funktion |
|-------------|----------|
| `Ctrl+L` | Rensa terminal |
| `Alt+E` | Snabb frånkoppling |
| `Alt+Z` | Zooma panel |
| `Alt+C` | Ladda om config |

---

## 💡 Pro Tips

### Vim-stil Navigering
- `h`, `j`, `k`, `l` fungerar precis som i Vim
- Naturlig muskelminne för Vim-användare

### Snabba Arbetsflöden
1. **Ny session**: `tmux new -s projekt`
2. **Återanslut**: `tmux attach -t projekt`  
3. **Lista sessioner**: `tmux ls`
4. **Döda session**: `tmux kill-session -t projekt`

### Viktiga Inställningar
- ✅ Inga fördröjningar efter Escape
- ✅ Fönster börjar på 1 (inte 0)
- ✅ True color support
- ✅ 24-timmars klocka
- ✅ Aggressiv storleksändring

### Konfigurationsstruktur
```
~/.config/tmux/
├── tmux.conf                 # Huvudkonfiguration
└── packages/
    ├── general.conf         # Allmänna inställningar
    ├── theme.conf           # Tema och färger
    └── keybindings.conf     # Extra tangentbindningar
```