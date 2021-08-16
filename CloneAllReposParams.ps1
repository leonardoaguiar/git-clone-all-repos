# How to execute
# powershell -ExecutionPolicy Bypass -File ./CloneAllReposParams.ps1 -URL {Your_DevOps_URL} -PAT {Your_PAT_Token}

param([parameter(mandatory)] [string] $URL, [parameter(mandatory)] [string] $PAT )

# Retrieve list of all repositories
$base64AuthInfo= [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes(":$($PAT)"))

$headers = @{
    "Authorization" = ("Basic {0}" -f $base64AuthInfo)
    "Accept"        = "application/json"
}

$resp = Invoke-RestMethod -Method Get -Headers $headers -Uri ("{0}/_apis/git/repositories?api-version=6.0" -f $URL)

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