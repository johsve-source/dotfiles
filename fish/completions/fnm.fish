complete -c fnm -n "__fish_use_subcommand" -l node-dist-mirror -d 'https://nodejs.org/dist/ mirror' -r
complete -c fnm -n "__fish_use_subcommand" -l fnm-dir -d 'The root directory of fnm installations' -r -F
complete -c fnm -n "__fish_use_subcommand" -l multishell-path -d 'Where the current node version link is stored. This value will be populated automatically by evaluating `fnm env` in your shell profile. Read more about it using `fnm help env`' -r -F
complete -c fnm -n "__fish_use_subcommand" -l log-level -d 'The log level of fnm commands' -r -f -a "{quiet\t'',error\t'',info\t''}"
complete -c fnm -n "__fish_use_subcommand" -l arch -d 'Override the architecture of the installed Node binary. Defaults to arch of fnm binary' -r
complete -c fnm -n "__fish_use_subcommand" -l version-file-strategy -d 'A strategy for how to resolve the Node version. Used whenever `fnm use` or `fnm install` is called without a version, or when `--use-on-cd` is configured on evaluation' -r -f -a "{local\t'Use the local version of Node defined within the current directory',recursive\t'Use the version of Node defined within the current directory and all parent directories'}"
complete -c fnm -n "__fish_use_subcommand" -l corepack-enabled -d 'Enable corepack support for each new installation. This will make fnm call `corepack enable` on every Node.js installation. For more information about corepack see https://nodejs.org/api/corepack.html'
complete -c fnm -n "__fish_use_subcommand" -l resolve-engines -d 'Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present. Experimental: This feature is subject to change. Note: `engines.node` can be any semver range, with the latest satisfying version being resolved.'
complete -c fnm -n "__fish_use_subcommand" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c fnm -n "__fish_use_subcommand" -s V -l version -d 'Print version'
complete -c fnm -n "__fish_use_subcommand" -f -a "list-remote" -d 'List all remote Node.js versions'
complete -c fnm -n "__fish_use_subcommand" -f -a "ls-remote" -d 'List all remote Node.js versions'
complete -c fnm -n "__fish_use_subcommand" -f -a "list" -d 'List all locally installed Node.js versions'
complete -c fnm -n "__fish_use_subcommand" -f -a "ls" -d 'List all locally installed Node.js versions'
complete -c fnm -n "__fish_use_subcommand" -f -a "install" -d 'Install a new Node.js version'
complete -c fnm -n "__fish_use_subcommand" -f -a "use" -d 'Change Node.js version'
complete -c fnm -n "__fish_use_subcommand" -f -a "env" -d 'Print and set up required environment variables for fnm'
complete -c fnm -n "__fish_use_subcommand" -f -a "completions" -d 'Print shell completions to stdout'
complete -c fnm -n "__fish_use_subcommand" -f -a "alias" -d 'Alias a version to a common name'
complete -c fnm -n "__fish_use_subcommand" -f -a "unalias" -d 'Remove an alias definition'
complete -c fnm -n "__fish_use_subcommand" -f -a "default" -d 'Set a version as the default version'
complete -c fnm -n "__fish_use_subcommand" -f -a "current" -d 'Print the current Node.js version'
complete -c fnm -n "__fish_use_subcommand" -f -a "exec" -d 'Run a command within fnm context'
complete -c fnm -n "__fish_use_subcommand" -f -a "uninstall" -d 'Uninstall a Node.js version'
complete -c fnm -n "__fish_use_subcommand" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c fnm -n "__fish_seen_subcommand_from list-remote" -l node-dist-mirror -d 'https://nodejs.org/dist/ mirror' -r
complete -c fnm -n "__fish_seen_subcommand_from list-remote" -l fnm-dir -d 'The root directory of fnm installations' -r -F
complete -c fnm -n "__fish_seen_subcommand_from list-remote" -l log-level -d 'The log level of fnm commands' -r -f -a "{quiet\t'',error\t'',info\t''}"
complete -c fnm -n "__fish_seen_subcommand_from list-remote" -l arch -d 'Override the architecture of the installed Node binary. Defaults to arch of fnm binary' -r
complete -c fnm -n "__fish_seen_subcommand_from list-remote" -l version-file-strategy -d 'A strategy for how to resolve the Node version. Used whenever `fnm use` or `fnm install` is called without a version, or when `--use-on-cd` is configured on evaluation' -r -f -a "{local\t'Use the local version of Node defined within the current directory',recursive\t'Use the version of Node defined within the current directory and all parent directories'}"
complete -c fnm -n "__fish_seen_subcommand_from list-remote" -l corepack-enabled -d 'Enable corepack support for each new installation. This will make fnm call `corepack enable` on every Node.js installation. For more information about corepack see https://nodejs.org/api/corepack.html'
complete -c fnm -n "__fish_seen_subcommand_from list-remote" -l resolve-engines -d 'Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present. Experimental: This feature is subject to change. Note: `engines.node` can be any semver range, with the latest satisfying version being resolved.'
complete -c fnm -n "__fish_seen_subcommand_from list-remote" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c fnm -n "__fish_seen_subcommand_from ls-remote" -l node-dist-mirror -d 'https://nodejs.org/dist/ mirror' -r
complete -c fnm -n "__fish_seen_subcommand_from ls-remote" -l fnm-dir -d 'The root directory of fnm installations' -r -F
complete -c fnm -n "__fish_seen_subcommand_from ls-remote" -l log-level -d 'The log level of fnm commands' -r -f -a "{quiet\t'',error\t'',info\t''}"
complete -c fnm -n "__fish_seen_subcommand_from ls-remote" -l arch -d 'Override the architecture of the installed Node binary. Defaults to arch of fnm binary' -r
complete -c fnm -n "__fish_seen_subcommand_from ls-remote" -l version-file-strategy -d 'A strategy for how to resolve the Node version. Used whenever `fnm use` or `fnm install` is called without a version, or when `--use-on-cd` is configured on evaluation' -r -f -a "{local\t'Use the local version of Node defined within the current directory',recursive\t'Use the version of Node defined within the current directory and all parent directories'}"
complete -c fnm -n "__fish_seen_subcommand_from ls-remote" -l corepack-enabled -d 'Enable corepack support for each new installation. This will make fnm call `corepack enable` on every Node.js installation. For more information about corepack see https://nodejs.org/api/corepack.html'
complete -c fnm -n "__fish_seen_subcommand_from ls-remote" -l resolve-engines -d 'Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present. Experimental: This feature is subject to change. Note: `engines.node` can be any semver range, with the latest satisfying version being resolved.'
complete -c fnm -n "__fish_seen_subcommand_from ls-remote" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c fnm -n "__fish_seen_subcommand_from list" -l node-dist-mirror -d 'https://nodejs.org/dist/ mirror' -r
complete -c fnm -n "__fish_seen_subcommand_from list" -l fnm-dir -d 'The root directory of fnm installations' -r -F
complete -c fnm -n "__fish_seen_subcommand_from list" -l log-level -d 'The log level of fnm commands' -r -f -a "{quiet\t'',error\t'',info\t''}"
complete -c fnm -n "__fish_seen_subcommand_from list" -l arch -d 'Override the architecture of the installed Node binary. Defaults to arch of fnm binary' -r
complete -c fnm -n "__fish_seen_subcommand_from list" -l version-file-strategy -d 'A strategy for how to resolve the Node version. Used whenever `fnm use` or `fnm install` is called without a version, or when `--use-on-cd` is configured on evaluation' -r -f -a "{local\t'Use the local version of Node defined within the current directory',recursive\t'Use the version of Node defined within the current directory and all parent directories'}"
complete -c fnm -n "__fish_seen_subcommand_from list" -l corepack-enabled -d 'Enable corepack support for each new installation. This will make fnm call `corepack enable` on every Node.js installation. For more information about corepack see https://nodejs.org/api/corepack.html'
complete -c fnm -n "__fish_seen_subcommand_from list" -l resolve-engines -d 'Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present. Experimental: This feature is subject to change. Note: `engines.node` can be any semver range, with the latest satisfying version being resolved.'
complete -c fnm -n "__fish_seen_subcommand_from list" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c fnm -n "__fish_seen_subcommand_from ls" -l node-dist-mirror -d 'https://nodejs.org/dist/ mirror' -r
complete -c fnm -n "__fish_seen_subcommand_from ls" -l fnm-dir -d 'The root directory of fnm installations' -r -F
complete -c fnm -n "__fish_seen_subcommand_from ls" -l log-level -d 'The log level of fnm commands' -r -f -a "{quiet\t'',error\t'',info\t''}"
complete -c fnm -n "__fish_seen_subcommand_from ls" -l arch -d 'Override the architecture of the installed Node binary. Defaults to arch of fnm binary' -r
complete -c fnm -n "__fish_seen_subcommand_from ls" -l version-file-strategy -d 'A strategy for how to resolve the Node version. Used whenever `fnm use` or `fnm install` is called without a version, or when `--use-on-cd` is configured on evaluation' -r -f -a "{local\t'Use the local version of Node defined within the current directory',recursive\t'Use the version of Node defined within the current directory and all parent directories'}"
complete -c fnm -n "__fish_seen_subcommand_from ls" -l corepack-enabled -d 'Enable corepack support for each new installation. This will make fnm call `corepack enable` on every Node.js installation. For more information about corepack see https://nodejs.org/api/corepack.html'
complete -c fnm -n "__fish_seen_subcommand_from ls" -l resolve-engines -d 'Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present. Experimental: This feature is subject to change. Note: `engines.node` can be any semver range, with the latest satisfying version being resolved.'
complete -c fnm -n "__fish_seen_subcommand_from ls" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c fnm -n "__fish_seen_subcommand_from install" -l node-dist-mirror -d 'https://nodejs.org/dist/ mirror' -r
complete -c fnm -n "__fish_seen_subcommand_from install" -l fnm-dir -d 'The root directory of fnm installations' -r -F
complete -c fnm -n "__fish_seen_subcommand_from install" -l log-level -d 'The log level of fnm commands' -r -f -a "{quiet\t'',error\t'',info\t''}"
complete -c fnm -n "__fish_seen_subcommand_from install" -l arch -d 'Override the architecture of the installed Node binary. Defaults to arch of fnm binary' -r
complete -c fnm -n "__fish_seen_subcommand_from install" -l version-file-strategy -d 'A strategy for how to resolve the Node version. Used whenever `fnm use` or `fnm install` is called without a version, or when `--use-on-cd` is configured on evaluation' -r -f -a "{local\t'Use the local version of Node defined within the current directory',recursive\t'Use the version of Node defined within the current directory and all parent directories'}"
complete -c fnm -n "__fish_seen_subcommand_from install" -l lts -d 'Install latest LTS'
complete -c fnm -n "__fish_seen_subcommand_from install" -l latest -d 'Install latest version'
complete -c fnm -n "__fish_seen_subcommand_from install" -l corepack-enabled -d 'Enable corepack support for each new installation. This will make fnm call `corepack enable` on every Node.js installation. For more information about corepack see https://nodejs.org/api/corepack.html'
complete -c fnm -n "__fish_seen_subcommand_from install" -l resolve-engines -d 'Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present. Experimental: This feature is subject to change. Note: `engines.node` can be any semver range, with the latest satisfying version being resolved.'
complete -c fnm -n "__fish_seen_subcommand_from install" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c fnm -n "__fish_seen_subcommand_from use" -l node-dist-mirror -d 'https://nodejs.org/dist/ mirror' -r
complete -c fnm -n "__fish_seen_subcommand_from use" -l fnm-dir -d 'The root directory of fnm installations' -r -F
complete -c fnm -n "__fish_seen_subcommand_from use" -l log-level -d 'The log level of fnm commands' -r -f -a "{quiet\t'',error\t'',info\t''}"
complete -c fnm -n "__fish_seen_subcommand_from use" -l arch -d 'Override the architecture of the installed Node binary. Defaults to arch of fnm binary' -r
complete -c fnm -n "__fish_seen_subcommand_from use" -l version-file-strategy -d 'A strategy for how to resolve the Node version. Used whenever `fnm use` or `fnm install` is called without a version, or when `--use-on-cd` is configured on evaluation' -r -f -a "{local\t'Use the local version of Node defined within the current directory',recursive\t'Use the version of Node defined within the current directory and all parent directories'}"
complete -c fnm -n "__fish_seen_subcommand_from use" -l install-if-missing -d 'Install the version if it isn\'t installed yet'
complete -c fnm -n "__fish_seen_subcommand_from use" -l silent-if-unchanged -d 'Don\'t output a message identifying the version being used if it will not change due to execution of this command'
complete -c fnm -n "__fish_seen_subcommand_from use" -l corepack-enabled -d 'Enable corepack support for each new installation. This will make fnm call `corepack enable` on every Node.js installation. For more information about corepack see https://nodejs.org/api/corepack.html'
complete -c fnm -n "__fish_seen_subcommand_from use" -l resolve-engines -d 'Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present. Experimental: This feature is subject to change. Note: `engines.node` can be any semver range, with the latest satisfying version being resolved.'
complete -c fnm -n "__fish_seen_subcommand_from use" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c fnm -n "__fish_seen_subcommand_from env" -l shell -d 'The shell syntax to use. Infers when missing' -r -f -a "{bash\t'',zsh\t'',fish\t'',power-shell\t''}"
complete -c fnm -n "__fish_seen_subcommand_from env" -l node-dist-mirror -d 'https://nodejs.org/dist/ mirror' -r
complete -c fnm -n "__fish_seen_subcommand_from env" -l fnm-dir -d 'The root directory of fnm installations' -r -F
complete -c fnm -n "__fish_seen_subcommand_from env" -l log-level -d 'The log level of fnm commands' -r -f -a "{quiet\t'',error\t'',info\t''}"
complete -c fnm -n "__fish_seen_subcommand_from env" -l arch -d 'Override the architecture of the installed Node binary. Defaults to arch of fnm binary' -r
complete -c fnm -n "__fish_seen_subcommand_from env" -l version-file-strategy -d 'A strategy for how to resolve the Node version. Used whenever `fnm use` or `fnm install` is called without a version, or when `--use-on-cd` is configured on evaluation' -r -f -a "{local\t'Use the local version of Node defined within the current directory',recursive\t'Use the version of Node defined within the current directory and all parent directories'}"
complete -c fnm -n "__fish_seen_subcommand_from env" -l json -d 'Print JSON instead of shell commands'
complete -c fnm -n "__fish_seen_subcommand_from env" -l multi -d 'Deprecated. This is the default now'
complete -c fnm -n "__fish_seen_subcommand_from env" -l use-on-cd -d 'Print the script to change Node versions every directory change'
complete -c fnm -n "__fish_seen_subcommand_from env" -l corepack-enabled -d 'Enable corepack support for each new installation. This will make fnm call `corepack enable` on every Node.js installation. For more information about corepack see https://nodejs.org/api/corepack.html'
complete -c fnm -n "__fish_seen_subcommand_from env" -l resolve-engines -d 'Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present. Experimental: This feature is subject to change. Note: `engines.node` can be any semver range, with the latest satisfying version being resolved.'
complete -c fnm -n "__fish_seen_subcommand_from env" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c fnm -n "__fish_seen_subcommand_from completions" -l shell -d 'The shell syntax to use. Infers when missing' -r -f -a "{bash\t'',zsh\t'',fish\t'',power-shell\t''}"
complete -c fnm -n "__fish_seen_subcommand_from completions" -l node-dist-mirror -d 'https://nodejs.org/dist/ mirror' -r
complete -c fnm -n "__fish_seen_subcommand_from completions" -l fnm-dir -d 'The root directory of fnm installations' -r -F
complete -c fnm -n "__fish_seen_subcommand_from completions" -l log-level -d 'The log level of fnm commands' -r -f -a "{quiet\t'',error\t'',info\t''}"
complete -c fnm -n "__fish_seen_subcommand_from completions" -l arch -d 'Override the architecture of the installed Node binary. Defaults to arch of fnm binary' -r
complete -c fnm -n "__fish_seen_subcommand_from completions" -l version-file-strategy -d 'A strategy for how to resolve the Node version. Used whenever `fnm use` or `fnm install` is called without a version, or when `--use-on-cd` is configured on evaluation' -r -f -a "{local\t'Use the local version of Node defined within the current directory',recursive\t'Use the version of Node defined within the current directory and all parent directories'}"
complete -c fnm -n "__fish_seen_subcommand_from completions" -l corepack-enabled -d 'Enable corepack support for each new installation. This will make fnm call `corepack enable` on every Node.js installation. For more information about corepack see https://nodejs.org/api/corepack.html'
complete -c fnm -n "__fish_seen_subcommand_from completions" -l resolve-engines -d 'Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present. Experimental: This feature is subject to change. Note: `engines.node` can be any semver range, with the latest satisfying version being resolved.'
complete -c fnm -n "__fish_seen_subcommand_from completions" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c fnm -n "__fish_seen_subcommand_from alias" -l node-dist-mirror -d 'https://nodejs.org/dist/ mirror' -r
complete -c fnm -n "__fish_seen_subcommand_from alias" -l fnm-dir -d 'The root directory of fnm installations' -r -F
complete -c fnm -n "__fish_seen_subcommand_from alias" -l log-level -d 'The log level of fnm commands' -r -f -a "{quiet\t'',error\t'',info\t''}"
complete -c fnm -n "__fish_seen_subcommand_from alias" -l arch -d 'Override the architecture of the installed Node binary. Defaults to arch of fnm binary' -r
complete -c fnm -n "__fish_seen_subcommand_from alias" -l version-file-strategy -d 'A strategy for how to resolve the Node version. Used whenever `fnm use` or `fnm install` is called without a version, or when `--use-on-cd` is configured on evaluation' -r -f -a "{local\t'Use the local version of Node defined within the current directory',recursive\t'Use the version of Node defined within the current directory and all parent directories'}"
complete -c fnm -n "__fish_seen_subcommand_from alias" -l corepack-enabled -d 'Enable corepack support for each new installation. This will make fnm call `corepack enable` on every Node.js installation. For more information about corepack see https://nodejs.org/api/corepack.html'
complete -c fnm -n "__fish_seen_subcommand_from alias" -l resolve-engines -d 'Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present. Experimental: This feature is subject to change. Note: `engines.node` can be any semver range, with the latest satisfying version being resolved.'
complete -c fnm -n "__fish_seen_subcommand_from alias" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c fnm -n "__fish_seen_subcommand_from unalias" -l node-dist-mirror -d 'https://nodejs.org/dist/ mirror' -r
complete -c fnm -n "__fish_seen_subcommand_from unalias" -l fnm-dir -d 'The root directory of fnm installations' -r -F
complete -c fnm -n "__fish_seen_subcommand_from unalias" -l log-level -d 'The log level of fnm commands' -r -f -a "{quiet\t'',error\t'',info\t''}"
complete -c fnm -n "__fish_seen_subcommand_from unalias" -l arch -d 'Override the architecture of the installed Node binary. Defaults to arch of fnm binary' -r
complete -c fnm -n "__fish_seen_subcommand_from unalias" -l version-file-strategy -d 'A strategy for how to resolve the Node version. Used whenever `fnm use` or `fnm install` is called without a version, or when `--use-on-cd` is configured on evaluation' -r -f -a "{local\t'Use the local version of Node defined within the current directory',recursive\t'Use the version of Node defined within the current directory and all parent directories'}"
complete -c fnm -n "__fish_seen_subcommand_from unalias" -l corepack-enabled -d 'Enable corepack support for each new installation. This will make fnm call `corepack enable` on every Node.js installation. For more information about corepack see https://nodejs.org/api/corepack.html'
complete -c fnm -n "__fish_seen_subcommand_from unalias" -l resolve-engines -d 'Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present. Experimental: This feature is subject to change. Note: `engines.node` can be any semver range, with the latest satisfying version being resolved.'
complete -c fnm -n "__fish_seen_subcommand_from unalias" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c fnm -n "__fish_seen_subcommand_from default" -l node-dist-mirror -d 'https://nodejs.org/dist/ mirror' -r
complete -c fnm -n "__fish_seen_subcommand_from default" -l fnm-dir -d 'The root directory of fnm installations' -r -F
complete -c fnm -n "__fish_seen_subcommand_from default" -l log-level -d 'The log level of fnm commands' -r -f -a "{quiet\t'',error\t'',info\t''}"
complete -c fnm -n "__fish_seen_subcommand_from default" -l arch -d 'Override the architecture of the installed Node binary. Defaults to arch of fnm binary' -r
complete -c fnm -n "__fish_seen_subcommand_from default" -l version-file-strategy -d 'A strategy for how to resolve the Node version. Used whenever `fnm use` or `fnm install` is called without a version, or when `--use-on-cd` is configured on evaluation' -r -f -a "{local\t'Use the local version of Node defined within the current directory',recursive\t'Use the version of Node defined within the current directory and all parent directories'}"
complete -c fnm -n "__fish_seen_subcommand_from default" -l corepack-enabled -d 'Enable corepack support for each new installation. This will make fnm call `corepack enable` on every Node.js installation. For more information about corepack see https://nodejs.org/api/corepack.html'
complete -c fnm -n "__fish_seen_subcommand_from default" -l resolve-engines -d 'Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present. Experimental: This feature is subject to change. Note: `engines.node` can be any semver range, with the latest satisfying version being resolved.'
complete -c fnm -n "__fish_seen_subcommand_from default" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c fnm -n "__fish_seen_subcommand_from current" -l node-dist-mirror -d 'https://nodejs.org/dist/ mirror' -r
complete -c fnm -n "__fish_seen_subcommand_from current" -l fnm-dir -d 'The root directory of fnm installations' -r -F
complete -c fnm -n "__fish_seen_subcommand_from current" -l log-level -d 'The log level of fnm commands' -r -f -a "{quiet\t'',error\t'',info\t''}"
complete -c fnm -n "__fish_seen_subcommand_from current" -l arch -d 'Override the architecture of the installed Node binary. Defaults to arch of fnm binary' -r
complete -c fnm -n "__fish_seen_subcommand_from current" -l version-file-strategy -d 'A strategy for how to resolve the Node version. Used whenever `fnm use` or `fnm install` is called without a version, or when `--use-on-cd` is configured on evaluation' -r -f -a "{local\t'Use the local version of Node defined within the current directory',recursive\t'Use the version of Node defined within the current directory and all parent directories'}"
complete -c fnm -n "__fish_seen_subcommand_from current" -l corepack-enabled -d 'Enable corepack support for each new installation. This will make fnm call `corepack enable` on every Node.js installation. For more information about corepack see https://nodejs.org/api/corepack.html'
complete -c fnm -n "__fish_seen_subcommand_from current" -l resolve-engines -d 'Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present. Experimental: This feature is subject to change. Note: `engines.node` can be any semver range, with the latest satisfying version being resolved.'
complete -c fnm -n "__fish_seen_subcommand_from current" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c fnm -n "__fish_seen_subcommand_from exec" -l using -d 'Either an explicit version, or a filename with the version written in it' -r
complete -c fnm -n "__fish_seen_subcommand_from exec" -l node-dist-mirror -d 'https://nodejs.org/dist/ mirror' -r
complete -c fnm -n "__fish_seen_subcommand_from exec" -l fnm-dir -d 'The root directory of fnm installations' -r -F
complete -c fnm -n "__fish_seen_subcommand_from exec" -l log-level -d 'The log level of fnm commands' -r -f -a "{quiet\t'',error\t'',info\t''}"
complete -c fnm -n "__fish_seen_subcommand_from exec" -l arch -d 'Override the architecture of the installed Node binary. Defaults to arch of fnm binary' -r
complete -c fnm -n "__fish_seen_subcommand_from exec" -l version-file-strategy -d 'A strategy for how to resolve the Node version. Used whenever `fnm use` or `fnm install` is called without a version, or when `--use-on-cd` is configured on evaluation' -r -f -a "{local\t'Use the local version of Node defined within the current directory',recursive\t'Use the version of Node defined within the current directory and all parent directories'}"
complete -c fnm -n "__fish_seen_subcommand_from exec" -l using-file -d 'Deprecated. This is the default now'
complete -c fnm -n "__fish_seen_subcommand_from exec" -l corepack-enabled -d 'Enable corepack support for each new installation. This will make fnm call `corepack enable` on every Node.js installation. For more information about corepack see https://nodejs.org/api/corepack.html'
complete -c fnm -n "__fish_seen_subcommand_from exec" -l resolve-engines -d 'Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present. Experimental: This feature is subject to change. Note: `engines.node` can be any semver range, with the latest satisfying version being resolved.'
complete -c fnm -n "__fish_seen_subcommand_from exec" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c fnm -n "__fish_seen_subcommand_from uninstall" -l node-dist-mirror -d 'https://nodejs.org/dist/ mirror' -r
complete -c fnm -n "__fish_seen_subcommand_from uninstall" -l fnm-dir -d 'The root directory of fnm installations' -r -F
complete -c fnm -n "__fish_seen_subcommand_from uninstall" -l log-level -d 'The log level of fnm commands' -r -f -a "{quiet\t'',error\t'',info\t''}"
complete -c fnm -n "__fish_seen_subcommand_from uninstall" -l arch -d 'Override the architecture of the installed Node binary. Defaults to arch of fnm binary' -r
complete -c fnm -n "__fish_seen_subcommand_from uninstall" -l version-file-strategy -d 'A strategy for how to resolve the Node version. Used whenever `fnm use` or `fnm install` is called without a version, or when `--use-on-cd` is configured on evaluation' -r -f -a "{local\t'Use the local version of Node defined within the current directory',recursive\t'Use the version of Node defined within the current directory and all parent directories'}"
complete -c fnm -n "__fish_seen_subcommand_from uninstall" -l corepack-enabled -d 'Enable corepack support for each new installation. This will make fnm call `corepack enable` on every Node.js installation. For more information about corepack see https://nodejs.org/api/corepack.html'
complete -c fnm -n "__fish_seen_subcommand_from uninstall" -l resolve-engines -d 'Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present. Experimental: This feature is subject to change. Note: `engines.node` can be any semver range, with the latest satisfying version being resolved.'
complete -c fnm -n "__fish_seen_subcommand_from uninstall" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c fnm -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from list-remote list install use env completions alias unalias default current exec uninstall help" -f -a "list-remote" -d 'List all remote Node.js versions'
complete -c fnm -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from list-remote list install use env completions alias unalias default current exec uninstall help" -f -a "list" -d 'List all locally installed Node.js versions'
complete -c fnm -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from list-remote list install use env completions alias unalias default current exec uninstall help" -f -a "install" -d 'Install a new Node.js version'
complete -c fnm -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from list-remote list install use env completions alias unalias default current exec uninstall help" -f -a "use" -d 'Change Node.js version'
complete -c fnm -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from list-remote list install use env completions alias unalias default current exec uninstall help" -f -a "env" -d 'Print and set up required environment variables for fnm'
complete -c fnm -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from list-remote list install use env completions alias unalias default current exec uninstall help" -f -a "completions" -d 'Print shell completions to stdout'
complete -c fnm -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from list-remote list install use env completions alias unalias default current exec uninstall help" -f -a "alias" -d 'Alias a version to a common name'
complete -c fnm -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from list-remote list install use env completions alias unalias default current exec uninstall help" -f -a "unalias" -d 'Remove an alias definition'
complete -c fnm -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from list-remote list install use env completions alias unalias default current exec uninstall help" -f -a "default" -d 'Set a version as the default version'
complete -c fnm -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from list-remote list install use env completions alias unalias default current exec uninstall help" -f -a "current" -d 'Print the current Node.js version'
complete -c fnm -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from list-remote list install use env completions alias unalias default current exec uninstall help" -f -a "exec" -d 'Run a command within fnm context'
complete -c fnm -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from list-remote list install use env completions alias unalias default current exec uninstall help" -f -a "uninstall" -d 'Uninstall a Node.js version'
complete -c fnm -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from list-remote list install use env completions alias unalias default current exec uninstall help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
