# Home Manager Modules for Local Flakes

This directory contains home-manager modules that can use local nvim-nix and tmux flakes when available.

## Modules

### nvim.nix
- Provides `programs.neovim-flake.enable` option
- Automatically uses the local nvim-nix flake if available
- Falls back to `pkgs.neovim` if the flake is not found
- Disables the default neovim module to avoid conflicts

### tmux.nix  
- Provides `programs.tmux-flake.enable` option
- Automatically uses the local tmux flake if available
- Falls back to `pkgs.tmux` if the flake is not found
- Disables the default tmux module to avoid conflicts

## Configuration

The flake.nix includes the local flakes as inputs:
- `nvim-nix`: Points to `../../workspace/github.com/johsve-source/nvim-nix`
- `tmux`: Points to `../../workspace/github.com/johsve-source/tmux`

These modules are enabled in home.nix:
```nix
programs.neovim-flake.enable = true;
programs.tmux-flake.enable = true;
```

## Benefits

1. **Automatic Detection**: Modules prefer flake outputs when available
2. **Graceful Fallback**: Use system packages if flakes are not found
3. **Local Development**: Easy to work with local configurations
4. **No Conflicts**: Disable default modules to prevent package conflicts