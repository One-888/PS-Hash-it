function hash-it { param ([String] $Path)
    $h1 = (Get-filehash $Path -Algorithm SHA1  | select hash) -replace "@{Hash=",""
    $h2 = ($h1 -replace "}","").ToString().Substring(0,40)
    return $h2 
}
