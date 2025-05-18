page 50133 RoleCenterHeadline
{
    PageType = HeadLinePart;

    layout
    {
        area(content)
        {
            field(Headline1; welcomeMessage)
            {
                ApplicationArea = All;
            }
            field(Headline2; registrationPeriod)
            {
                ApplicationArea = All;
            }
            field(Headline3; paymentReminder)
            {
                ApplicationArea = All;
            }
            field(Headline4; upcomingEvents)
            {
                ApplicationArea = All;
            }
        }
    }

    var
        welcomeMessage: Label 'Welcome to Green University Student Portal';
        registrationPeriod: Label 'Fall 2025 Registration is now open - Deadline: July 15, 2025';
        paymentReminder: Label 'Tuition payment for Summer 2025 is due June 15, 2025';
        upcomingEvents: Label 'Upcoming: Spring Graduation Ceremony - May 25, 2025';
}