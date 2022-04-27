#INCLUDE "protheus.ch"

User Function FIND()
    Local nNumero := Random(1, 100)
    Local cValor := ""
    Local nTotErros := 0
    Local lContinua := .T.

    while lContinua
        
        cValor := FWInputBox("Choose a number [1-100]","")

        if empty(cValor)
            Alert("End Game!")
            Exit
        endif

        if VAL(cValor) > nNumero
            nTotErros++
            cMessage := "The number you chose is greater than the random number. "
            cMessage += "Total errors: "+cValToChar(nTotErros)
        elseif VAL(cValor) < nNumero
            nTotErros++
            cMessage := "The number you chose is less than the random number. "
            cMessage += "Total errors: "+cValToChar(nTotErros)
        else
            cMessage := "Congratulations! You're right. "
            cMessage += "Total errors: "+cValToChar(nTotErros)
            lContinua := .F.
        endif

        Alert(cMessage)
    end

return
