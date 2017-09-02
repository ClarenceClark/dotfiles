# Set up environment

set EDITOR vim
set BOOT_JVM_OPTIONS '-XX:MaxMetaspaceSize=128m -Xms256m -Xmx512m -client -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none'
set fish_user_paths "/usr/local/sbin" "/usr/local/opt/coreutils/libexec/gnubin" $fish_user_paths

# bobthefish config options

set theme_color_scheme solarized-light
set theme_date_format "+%H:%M"

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
