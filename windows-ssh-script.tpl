add-content -path -C:\Users\5arya\.ssh\config -value @'

Host ${hostname}
    HostName ${hostname}
    user ${user}
    IdentityFile ${identityfile} 
'@