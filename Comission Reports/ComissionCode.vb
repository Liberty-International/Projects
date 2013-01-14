Public Sub final_report_calculations()
    Application.DisplayAlerts = False
    Application.ScreenUpdating = False


    Sheets("FinalReport").Range("A3:S2000").Delete()

    'Dim rowNum As Integer
    Dim rowNumA As Integer
    'Dim varRow As Integer
    'Moving columns where they need to go
    ' for 1st row until the end
    For rowNum = 3 To Sheets("IDS Data").Cells.Find("*", SearchOrder:=xlByRows, SearchDirection:=xlPrevious).Row
        'for final report rows
        For rowNumA = 2 To Sheets("FinalReport").Cells.Find("*", SearchOrder:=xlByRows, SearchDirection:=xlPrevious).Row
            ' Moving data to new rows
            If Sheets("FinalReport").Cells(rowNumA + 1, 1) = "" Then

                ''FinalReport'' Sales Person    File Number Consignee   Origin  Agent   Destination Service Code    Carrier CBM Margin  Commission
                ''IDS Data''    Sales Person    File Number Consignee   Origin  Agent   Destination Service Code    Vessel  CBM
                Sheets("FinalReport").Cells(rowNumA + 1, 1) = Sheets("IDS Data").Cells(rowNum, 1) '' Sales Person
                Sheets("FinalReport").Cells(rowNumA + 1, 2) = Sheets("IDS Data").Cells(rowNum, 2) '' File Number
                Sheets("FinalReport").Cells(rowNumA + 1, 3) = Sheets("IDS Data").Cells(rowNum, 3) '' Consignee
                Sheets("FinalReport").Cells(rowNumA + 1, 4) = Sheets("IDS Data").Cells(rowNum, 4) '' Origin
                Sheets("FinalReport").Cells(rowNumA + 1, 5) = Sheets("IDS Data").Cells(rowNum, 5) '' Agent
                Sheets("FinalReport").Cells(rowNumA + 1, 6) = Sheets("IDS Data").Cells(rowNum, 6) '' Destination
                Sheets("FinalReport").Cells(rowNumA + 1, 7) = Sheets("IDS Data").Cells(rowNum, 7) '' Service Code
                Sheets("FinalReport").Cells(rowNumA + 1, 8) = Sheets("IDS Data").Cells(rowNum, 8) '' Carrier
                Sheets("FinalReport").Cells(rowNumA + 1, 9) = Sheets("IDS Data").Cells(rowNum, 9) '' CBM
                GoTo Break1
            End If
        Next rowNumA
Break1:
    Next rowNum

    '' going through Webex Data sheet
    Dim rowNumB As Integer
    Dim rowNumBA As Integer
    Dim varRowB As Integer
    For rowNumBA = 3 To Sheets("FinalReport").Cells.Find("*", SearchOrder:=xlByRows, SearchDirection:=xlPrevious).Row
        For rowNumB = 1 To Sheets("Webex Data").Cells.Find("*", SearchOrder:=xlByRows, SearchDirection:=xlPrevious).Row
            ''FinalReport'' 1-Sales Person    2-File Number  3-Consignee   4-Origin  5-Agent   6-Destination 7-Service Code   8-Carrier 9-CBM 10-Margin  11-Commission
            ''Webex Data''  1-Client Name 2-Service Mode   3-Origin  4-Agent   5-Destination 6-SCAC    7-New Margin

            If (Sheets("FinalReport").Cells(rowNumBA, 3) = stringAfterSubstring(Sheets("Webex Data").Cells(rowNumB, 1), "-")) And _
                (Sheets("FinalReport").Cells(rowNumBA, 7) = Sheets("Webex Data").Cells(rowNumB, 2)) And _
                (Sheets("FinalReport").Cells(rowNumBA, 4) = Mid(Sheets("Webex Data").Cells(rowNumB, 3), 1, 3)) And _
                ((Sheets("FinalReport").Cells(rowNumBA, 5) = stringAfterSubstring(Sheets("Webex Data").Cells(rowNumB, 4), "-")) Or isInString(Sheets("Webex Data").Cells(rowNumB, 4), Sheets("FinalReport").Cells(rowNumBA, 5))) And _
                (Sheets("FinalReport").Cells(rowNumBA, 6) = Mid(Sheets("Webex Data").Cells(rowNumB, 5), 1, 3)) And _
                (Sheets("FinalReport").Cells(rowNumBA, 8) = Sheets("Webex Data").Cells(rowNumB, 6)) Then

                Sheets("FinalReport").Cells(rowNumBA, 10) = Sheets("Webex Data").Cells(rowNumB, 7) ''adds margin from Webex
                Sheets("FinalReport").Cells(rowNumBA, 11) = Sheets("FinalReport").Cells(rowNumBA, 10) * 0.5 * Sheets("FinalReport").Cells(rowNumBA, 9) '' calculating the margin * weight
                GoTo Break2
            End If
        Next rowNumB '' move on to next row in Webex Data
        Sheets("FinalReport").Cells(rowNumBA, 9) = "No Data Found"
Break2:
    Next rowNumBA

    ''deleting file number
    ''Sheets("FinalReport").Columns("B:B").Delete Shift:=xlToLeft

    '' sorting rows
    Dim NumCount As Integer
    NumCount = Sheets("FinalReport").Cells(Rows.Count, "A").End(xlUp).Row
    Sheets("FinalReport").Range("A3:K" & NumCount).Sort Key1:=Sheets("FinalReport").Range("A3:A" & NumCount)


    'Resize columns to fit
    Sheets("FinalReport").Columns("A:I").AutoFit()

    'Delete Extra sheets
    ''Sheets("IDS Data").Delete
    ''Sheets("Webex Data").Delete

End Sub

Public Function stringAfterSubstring(theMainString As String, theSubString As String) As String
    stringAfterSubstring = Trim(Mid(theMainString, InStr(theMainString, theSubString) + 1, Len(theMainString) + 1 - InStr(theMainString, theSubString)))
End Function

Public Function isInString(theMainString As String, theSubString As String) As Boolean
    isInString = False
    If (Not (InStr(theMainString, theSubString) = 0)) Then
        isInString = True
    End If
End Function