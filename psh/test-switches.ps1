Param (
    [switch]$runThatFunc,
    [switch]$runThatOtherFunc = $(throw "-runThatOtherFunc is required.")
)

Clear-Host

function doSomething() {
    Write-Host This is just a test
}

if ($runThatFunc) {
        doSomething
}

function saySomething() {
    Write-Host "I'm giving up on you"
}

if ($runThatOtherFunc) {
    saySomething
}
