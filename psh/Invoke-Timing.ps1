$inputValue = 10

do {
    $inputValid = [int]::TryParse((Read-Host 'gimme a number'), [ref]$inputValue)
    if (-not $inputValid) {
        Write-Host "your input was not an integer..."
    }
} while (-not $inputValid)

if ($inputValue -le 0) {$inputValue = 10}
Write-Host $inputValue "is the number of runs"
