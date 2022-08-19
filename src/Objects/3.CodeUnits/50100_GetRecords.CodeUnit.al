codeunit 50100 CodeunitGetRecords
{
    procedure copyRecords(var parm: Record Teachers)
    var
        TeacherCourses: Record "Class Schedule";
        TeacherCourses2: Record "Class Schedule";
        Teacher: Record Teachers;
    begin
        Teacher.Reset();
        Teacher.SetRange(Teacher.ID, Teacher.ID);
        Teacher.Init();
        Teacher.Name := 'Hamza';
        Teacher."Work Phone No." := '569898465';
        Teacher."Personal Phone No." := '4878985';
        Teacher."Website-URL" := 'www.xyz.com';
        Teacher.Email := 'hamza@gmail.com';
        Teacher.Active := true;
        Message('Teacher Added');
        Teacher.Insert(true);

        TeacherCourses.Reset();
        TeacherCourses.SetRange("Teacher ID", parm.ID);
        if TeacherCourses.FindSet() then begin
            repeat
                TeacherCourses2.Init();
                TeacherCourses2."Teacher ID" := Teacher.ID;
                TeacherCourses2."Teacher Name" := TeacherCourses."Teacher Name";
                TeacherCourses2."Class ID" := TeacherCourses."Class ID";
                TeacherCourses2."Class Name" := TeacherCourses."Class Name";
                //TeacherCourses2."Line No." := TeacherCourses."Line No.";
                TeacherCourses2.Duration := TeacherCourses.Duration;
                TeacherCourses2."Schedule Start Time" := TeacherCourses."Schedule Start Time";
                TeacherCourses2.ScheduleDay := TeacherCourses.ScheduleDay;
                TeacherCourses2.Insert(true);
            until TeacherCourses.Next() = 0;
            Message('Records Copied');
        end;
    end;

    local procedure CopyRecords2()
    var
        CustomerRecref: RecordRef;
        MyFieldRef: FieldRef;
        Text000: Label 'The value of the field after you insert the record is %1.';
    begin
        CustomerRecref.Open(18);
        MyFieldRef := CustomerRecref.Field(1);
        CustomerRecref.Init();
        MyFieldRef.Value := '4';
        CustomerRecref.Insert();
        Message('%1', MyFieldRef.Value);
    end;

}