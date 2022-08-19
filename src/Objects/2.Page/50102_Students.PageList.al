page 50102 "Student Page"
{
    ApplicationArea = All;
    Caption = 'Student Page';
    PageType = List;
    SourceTable = Students;
    UsageCategory = Lists;
    CardPageId = "Student Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone No. field.';
                }
                field(Website; Rec.Website)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Website field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the City field.';
                }
                field(Latitude; Rec.Latitude)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Latitude field.';
                }
                field(Longitude; Rec.Longitude)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Longitude field.';
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Active field.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                Caption = 'Get API records';

                trigger OnAction()
                var
                    response: Text;
                    httpClients: HttpClient;
                    httpResponse: HttpResponseMessage;
                begin
                    if (httpClients.Get('https://jsonplaceholder.typicode.com/users', httpResponse)) then begin
                        httpResponse.Content.ReadAs(response);
                        ReadResultfromResponse(response);
                        //Message(response);
                    end;
                end;
            }

        }

    }

    local procedure ReadResultfromResponse(response: Text)

    var
        json_array: JsonArray;
        json_object: JsonObject;
        json_value: JsonValue;
        i: Integer;
        recStudent: Record Students;
        studID: Integer;
        json_token: JsonToken;
        valuejToken: JsonToken;
    begin
        recStudent.Reset();
        if (recStudent.FindLast()) then
            studID := recStudent.ID + 1
        else
            studID := 1;


        if (json_token.ReadFrom(response)) then begin

            if (json_token.IsArray) then begin
                json_array := json_token.AsArray();

                for i := 0 to json_array.Count - 1 do begin

                    json_array.Get(i, json_token);

                    if (json_token.IsObject) then begin
                        json_object := json_token.AsObject();

                        recStudent.Reset();
                        recStudent.Init();
                        recStudent.ID := studID;

                        // if json_object.Get('name', valuejToken) then begin
                        //     if valuejToken.IsValue then begin
                        //         Message(valuejToken.AsValue().AsText());
                        //     end;
                        // end;
                        if json_object.Get('name', valuejToken) then begin
                            if valuejToken.IsValue then begin
                                recStudent.WebID := valuejToken.AsValue().AsInteger();
                                // Message(valuejToken.AsValue().AsText());
                            end;
                        end;

                        if GetResultJsonValue(json_object, 'name', json_value) then begin
                            recStudent.Name := json_value.AsText();   //Message(json_value.AsText());
                        end;
                        if GetResultJsonValue(json_object, 'email', json_value) then begin
                            recStudent.Email := json_value.AsText();
                        end;
                        if GetResultJsonValue(json_object, 'phone', json_value) then begin
                            recStudent."Phone No." := json_value.AsText();
                        end;
                        if GetResultJsonValue(json_object, 'website', json_value) then begin
                            recStudent.Website := json_value.AsText();
                        end;

                        recStudent.Active := true;
                        recStudent.Insert();
                    end;
                end;
            end;
        end;
    end;


    local procedure GetResultJsonValue(jObj: JsonObject; keyName: Text; var jValue: JsonValue): Boolean
    var
        json_Token: JsonToken;
    begin
        if not jObj.Get(keyName, json_Token) then exit;
        jValue := json_Token.AsValue();
        exit(true);
    end;
}
