tableextension 50101 "BSB Customer" extends Customer
{
    fields
    {
        field(51000; "BSB Favorite Book No"; Code[20])
        {
            Caption = 'Favorite Book No';
            TableRelation = "BSB Book";
        }

        field(50101; "BSB Favorite Book Description"; text[100])
        {
            Caption = 'Favorite Book Description';
            FieldClass = FlowField;
            Editable = false;
            // Erst CalcFormula
            CalcFormula = lookup ("BSB Book".Description where("No." = field("BSB Favorite Book No")));
        }
    }
}