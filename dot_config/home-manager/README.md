# home-manager

Det här lägger till en flake-baserad home-manager-konfiguration för användaren `johan` i katalogen `home-manager/`.

Hur använda lokalt
1. Klona eller byt till din lokala copy av repo:t och checkout branchen:
   git fetch
   git checkout -b home-manager/default-profile origin/home-manager/default-profile

2. Kopiera/spara filerna i `home-manager/` (eller använd direkt som de är i detta PR).

3. Bygg/visa flaken (valfritt):
   cd home-manager
   nix flake show .

4. Aktivera konfigurationen lokalt:
   cd home-manager
   home-manager switch --flake .#johan

   Eller från var filerna ligger:
   home-manager switch --flake /path/till/repo/home-manager#johan

Push och PR
- Lägg till, committa och pusha:
  git add home-manager
  git commit -m "Add home-manager flake for johan (default profile)"
  git push --set-upstream origin home-manager/default-profile

- Öppna PR via webben:
  https://github.com/johsve-source/dotfiles/compare/home-manager/default-profile?expand=1

Säkerhet
- Kontrollera att inga privata nycklar eller tokens committas. Använd .gitignore eller kryptering för hemligheter.
