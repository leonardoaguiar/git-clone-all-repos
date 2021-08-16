# How to execute
# powershell -ExecutionPolicy Bypass -File ./CloneAllRepos.ps1

# Read configuration file
Get-Content "CloneAllRepos.config" | foreach-object -begin { $h = @{ } } -process { 
    $k = [regex]::split($_, '=');
    if (($k[0].CompareTo("") -ne 0) -and ($k[0].StartsWith("[") -ne $True)) {
        $h.Add($k[0], $k[1])
    } 
}

$url = $h.Get_Item("URL")
$pat = $h.Get_Item("PAT")

# Retrieve list of all repositories
$base64AuthInfo= [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes(":$($pat)"))

$headers = @{
    "Authorization" = ("Basic {0}" -f $base64AuthInfo)
    "Accept"        = "application/json"
}

$resp = Invoke-RestMethod -Method Get -Headers $headers -Uri ("{0}/_apis/git/repositories?api-version=6.0" -f $url)

# Clone or pull all repositories
$initpath = get-location
foreach ($entry in $resp.value) {
    $name = $entry.name
    $sshUrl = $entry.sshUrl
    
    Write-Host $name
    Write-Host $sshUrl

    if (!(Test-Path -Path $name)) {
        git clone $sshUrl
    }
    else {
        set-location $name
        git pull
        set-location $initpath
    }
}