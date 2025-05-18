table 50114 "Student Registration Form"
{
    Caption = 'Student Registration Form';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Code[50])
        {
            Caption = 'Entry No.';
            Editable = false;

            trigger OnValidate()
            begin
                salesSetup.Get();
                noSeriesMgt.TestManual(salesSetup."Entry No.");
                "No. Series" := '';
            end;
        }
        field(333; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(2; "Full Name"; Text[200])
        {
            Caption = 'Full Name';
            NotBlank = true;

            trigger OnValidate() //Name cannot contain numbers
            var
                i: Integer;
                c: Char;
            begin
                for i := 1 to StrLen("Full Name") do begin
                    c := "Full Name"[i];
                    if (c in ['0' .. '9']) then
                        Error('Full Name cannot contain numbers.');
                end;
            end;
        }
        field(3; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
            NotBlank = true;

            trigger OnValidate()
            var
                MinAge: Integer;
                Today: Date;
                MinAllowedDOB: Date;
            begin
                MinAge := 16;
                Today := DT2Date(CurrentDateTime()); // Convert DateTime to Date directly

                if "Date of Birth" > Today then
                    Error('Date of Birth cannot be in the future.');

                MinAllowedDOB := CalcDate('-' + Format(MinAge) + 'Y', Today);

                if "Date of Birth" > MinAllowedDOB then
                    Error('Student must be at least %1 years old.', MinAge);
            end;
        }


        field(4; Gender; Enum "Gender Enum")
        {
            Caption = 'Gender';
            NotBlank = true;
        }
        field(5; Nationality; Enum "Nationality Enum")
        {
            Caption = 'Nationality';
            NotBlank = true;
        }
        field(6; "Marital Status"; Enum "Marital Status Enum")
        {
            Caption = 'Marital Status';
        }
        field(7; Religion; Enum "Religion Enum")
        {
            Caption = 'Religion';
        }
        field(8; "Identification Number"; Integer)
        {
            Caption = 'Identification Number';
            NotBlank = true;
            trigger OnValidate() //Identification Number must have at least 8 digits.
            begin
                if StrLen(Format("Identification Number")) < 8 then
                    Error('Identification Number must have at least 8 digits.');
            end;
        }
        field(9; "Present Address"; Text[200])
        {
            NotBlank = true;

            Caption = 'Present Address';
        }
        field(10; "Permanent Address"; Text[200])
        {
            NotBlank = true;

            Caption = 'Permanent Address';
        }
        field(11; "Phone Number"; Integer)
        {
            Caption = 'Phone Number';
            NotBlank = true;

            trigger OnValidate()//Phone Number must be 9 digits and start with 7
            var
                PhoneStr: Text[20];
            begin
                PhoneStr := Format("Phone Number");
                if StrLen(PhoneStr) <> 9 then
                    Error('Phone Number must have exactly 9 digits.');
                if CopyStr(PhoneStr, 1, 1) <> '7' then
                    Error('Phone Number must start with 7.');
            end;
        }
        field(12; "Email Address"; Text[200])
        {
            Caption = 'Email Address';
            NotBlank = true;

            trigger OnValidate()
            var
                AtPos: Integer;
                DotPos: Integer;
                AtCount: Integer;
                i: Integer;
            begin
                // Count number of '@' characters
                AtCount := 0;
                for i := 1 to StrLen("Email Address") do begin
                    if CopyStr("Email Address", i, 1) = '@' then
                        AtCount += 1;
                end;

                if AtCount <> 1 then
                    Error('Email must contain exactly one "@" character.');

                AtPos := StrPos("Email Address", '@');
                if (AtPos = 1) or (AtPos = StrLen("Email Address")) then
                    Error('"@" cannot be the first or last character.');

                // Look for '.' after the '@'
                DotPos := StrPos(CopyStr("Email Address", AtPos + 1, StrLen("Email Address")), '.');
                if DotPos = 0 then
                    Error('Email must contain a "." after the "@" symbol.');

                // Check for spaces
                if StrPos("Email Address", ' ') > 0 then
                    Error('Email address cannot contain spaces.');
            end;
        }


        field(13; "Emegency Contact Name"; Text[200])
        {
            Caption = 'Emegency Contact Name';
            NotBlank = true;




        }
        field(14; "Emergency Contact Relationship"; Enum "Emergency No Relationship Enum")
        {
            Caption = 'Emergency Contact Relationship';
        }
        field(15; "Emergency Contact Number"; Integer)
        {
            Caption = 'Emergency Contact Number';
            NotBlank = true;

            trigger OnValidate() //Emergency Contact Number must be 9 digits and start with 7
            var
                PhoneStr: Text[20];
            begin
                PhoneStr := Format("Emergency Contact Number");
                if StrLen(PhoneStr) <> 9 then
                    Error('Emergency Contact Number must have exactly 9 digits.');
                if CopyStr(PhoneStr, 1, 1) <> '7' then
                    Error('Emergency Contact Number must start with 7.');

                if "Emergency Contact Number" = "Phone Number" then
                    Error('Emergency Contact Name cannot be the same as your Phone Number.');

            end;


        }
        field(16; "Admission Number"; Code[100])
        {
            Caption = 'Admission Number';
            Editable = false;

        }
        field(17; "Course/Program Enrolled"; Enum "Course Enrolled Enum")
        {
            Caption = 'Course/Program Enrolled';
        }
        field(18; Specialization; Text[300])
        {
            Caption = 'Specialization';
            NotBlank = true;

        }
        field(19; "Academic Year"; Enum "Academic Year Enum")
        {
            Caption = 'Academic Year';
        }
        field(20; "Enrollment Date"; Date)
        {
            Caption = 'Enrollment Date';
            NotBlank = true;

            trigger OnValidate()
            begin
                if "Enrollment Date" <> Today then
                    Error('Enrollment Date must be the current date.');
            end;
        }
        field(21; "Mode of Study"; Enum "Mode of Study Enum")
        {
            Caption = 'Mode of Study';
        }
        field(22; "Father's Name"; Text[300])
        {
            Caption = 'Father''s Name';
            NotBlank = true;

        }
        field(23; "Mother's Name"; Text[300])
        {
            Caption = 'Mother''s Name';
            NotBlank = true;

        }
        field(24; "Guardian Name(if applicable)"; Text[300])
        {
            Caption = 'Guardian Name(if applicable)';
        }
        field(25; "Guardian Relationship"; Enum "Guardian Relationship Enum")
        {
            Caption = 'Guardian Relationship(if applicable)';
            InitValue = "None";
        }
        field(26; "Parent/Guardian's Occupation"; Text[300])
        {
            Caption = 'Parent/Guardian''s Occupation';
        }
        field(27; "Parent/Guardian Phone Number"; Integer)
        {
            Caption = 'Parent/Guardian Phone Number';

            trigger OnValidate() //Parent/Guardian Phone Number must be 9 digits and start with 7
            var
                PhoneStr: Text[20];
            begin
                PhoneStr := Format("Parent/Guardian Phone Number");
                if StrLen(PhoneStr) <> 9 then
                    Error('Parent/Guardian Phone Number must have exactly 9 digits.');
                if CopyStr(PhoneStr, 1, 1) <> '7' then
                    Error('Parent/Guardian Phone Number must start with 7.');
            end;
        }
        field(28; "Parent/Guardian Email"; Text[300])
        {
            Caption = 'Parent/Guardian Email';
            trigger OnValidate() //Parent/Guardian Email must contain '@' and '.' and cannot be empty
            var
                AtPos: Integer;
                DotPos: Integer;
            begin
                AtPos := StrPos("Parent/Guardian Email", '@');
                DotPos := StrPos("Parent/Guardian Email", '.');

                if (AtPos = 0) or (DotPos = 0) or (AtPos = 1) or (DotPos <= AtPos + 1) or (DotPos = StrLen("Parent/Guardian Email")) then
                    Error('Please enter a valid email address.');
            end;
        }
        field(29; "Upload Passport Photo"; Blob)
        {
            Caption = 'Upload Passport Photo';
            Subtype = Bitmap;

        }
        field(30; "Upload Id Photo"; Blob)
        {
            Caption = 'Upload Id Photo';
            Subtype = Bitmap;
        }
        field(31; "Scholarship/Financial Aid"; Enum "Scholarship/Financial Aid Enum")
        {
            Caption = 'Scholarship/Financial Aid';
        }
        field(32; "Scholarship Details"; Text[300])
        {
            Caption = 'Scholarship Details';
        }
        field(33; "Bank Name"; Enum "Bank Name Enum")
        {
            Caption = 'Bank Name';
            NotBlank = true;

        }
        field(34; "Account Number"; Integer)
        {
            Caption = 'Account Number';
            NotBlank = true;

        }
        field(35; "Medical Condition(if any)"; Text[300])
        {
            Caption = 'Medical Condition(if any)';
        }
        field(36; "Doctor's Contact"; Integer)
        {
            Caption = 'Doctor''s Contact (if applicable)';
        }
        field(37; "Hostel Accomodation"; Enum "Hostel Accomodation Enum")
        {
            Caption = 'Hostel Accomodation';
        }
        field(38; "Transport Facility"; Enum "Transport Facility Enum")
        {
            Caption = 'Transport Facility';
        }
        field(39; "Extracurricular Interests "; Text[500])
        {
            Caption = 'Extracurricular Interests ';
        }

        field(40; "Enrollment Status"; Enum "Enrollment Status Enum")
        {
            Caption = 'Enrollment Status';
            Editable = false;
            
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

    var
        salesSetup: Record "Sales & Receivables Setup";
        noSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if "Entry No." = '' then begin
            salesSetup.Get();
            salesSetup.TestField("Entry No.");
            noSeriesMgt.InitSeries(salesSetup."Entry No.", xRec."No. Series", 0D, "Entry No.", "No. Series");
            // "No. Series" := salesSetup."Entry No.";
            // "Entry No." := noSeriesMgt.GetNextNo("No. Series", true, true);
        end;
    end;


}
