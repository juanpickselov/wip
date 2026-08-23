import com.intellij.openapi.actionSystem.ActionManager

def actionManager() {
    ActionManager.getInstance()
}

def executeAction(String actionId) {
    def action = actionManager().getAction(actionId)
    if (action) {
        actionManager().tryToExecute(action, null, null, "", false)
        return true
    }
    println "Action $actionId no available."
    return false
}

def openSettingsDialog() {
    executeAction("ShowSettings")
}

def openFileDialog() {
    executeAction("OpenFile")
}
