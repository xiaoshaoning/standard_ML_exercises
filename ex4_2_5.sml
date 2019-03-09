(* Exercise 4.2.5: Design the following calendar-printing function. Take as
* input a month, the day of the first of that month, and the number of days in
  * the month. Months and days are abbreviated by their first three letters. The
  * month, day and number of days are each separated by a single white-space
  * character. For example, a request to print the calendar for a September in
  * which the first of the month is on a Thursday would be
  * Sep Thu 30
  * Print the calendar as:
  * 1. A row with the month
  * 2. A blank row.
  * 3. A row with the names of the days
  * 4. As many rows as necessary, with the days printed in the proper columns.*)

(* The following codes print a calendar for one year.*)

fun calcBlankNumber(firstDay:string):int =
    case firstDay of "Sun" => 0 |
                     "Mon" => 1 |
                     "Tue" => 2 |
                     "Wed" => 3 |
                     "Thu" => 4 |
                     "Fri" => 5 |
                     "Sat" => 6;

fun printBlank(0) = ()
| printBlank(blankNumber:int):unit = (print("\t"); printBlank(blankNumber-1))
;

fun printCurrentNumber(currentNumber:int) =
print(Int.toString(currentNumber));

fun printCalendarLine(firstNumber:int, firstDay:string, lastNumber:int):int =
    let
        val isFirstLine = firstNumber = 1;
        val blankNumber = calcBlankNumber(firstDay);
        fun printLeftNumber(0, startNumber) = ()
        | printLeftNumber(1, startNumber) = print(Int.toString(startNumber))
        | printLeftNumber(leftNumber, startNumber) = (
                                                       print(Int.toString(startNumber)^"\t");
                                                       printLeftNumber(leftNumber-1, startNumber+1)
                                                     )
    in
        (
          if isFirstLine then (
                              printBlank(blankNumber);
                              printLeftNumber(7-blankNumber, 1)
                             )
          else (
                if firstNumber <= lastNumber then
                    (
                    print(Int.toString(firstNumber));
                    print("\t")
                    )
                else ();

                if firstNumber+1 <= lastNumber then
                    (
                    print(Int.toString(firstNumber+1));
                    print("\t")
                    )
                else ();

                if firstNumber+2 <= lastNumber then
                    (
                    print(Int.toString(firstNumber+2));
                    print("\t")
                    )
                else ();

                if firstNumber+3 <= lastNumber then
                    (
                    print(Int.toString(firstNumber+3));
                    print("\t")
                    )
                else ();

                if firstNumber+4 <= lastNumber then
                    (
                    print(Int.toString(firstNumber+4));
                    print("\t")
                    )
                else ();

                if firstNumber+5 <= lastNumber then
                    (
                    print(Int.toString(firstNumber+5));
                    print("\t")
                    )
                else ();

                if firstNumber+6 <= lastNumber then
                    print(Int.toString(firstNumber+6))
                else ()
                );

          print("\n");

          if isFirstLine then 7-blankNumber+1
          else firstNumber+7
        )
    end;

(* val  firstNumber = printCalendarLine(1, "Thu", 30); *)

fun printCalendarNumber(firstDay, lastDay) =
printCalendarLine(printCalendarLine(
                                   printCalendarLine(
                                                    printCalendarLine(
                                                                     printCalendarLine(
                                                                                       printCalendarLine(1, firstDay, lastDay),
                                                                                       "Sun", lastDay),
                                                                     "Sun", lastDay),
                                                    "Sun", lastDay),
                                   "Sun", lastDay),
                 "Sun", lastDay);

fun printCalendarOfOneYear(firstDayOftheYear:string, isLeapYear:bool) =
let
    fun getMonthDayNumber(month:string, isLeapYearFlag:bool) =
    case month of "January"  => 31 |
                  "February" => if isLeapYearFlag then 29 else 28 |
                  "March"    => 31 |
                  "April"    => 30 |
                  "May"      => 31 |
                  "June"     => 30 |
                  "July"     => 31 |
                  "August"   => 31 |
                  "September"=> 30 |
                  "October"  => 31 |
                  "November" => 30 |
                  "December" => 31;

    fun printCalendarMonth(month:string, monthDayNumber:int, firstDayOfTheMonth:string) =
    (print("\t\t\t"^month^"\n\n");
     print("Sun\tMon\tTue\tWed\tThu\tFri\tSat\n");
     printCalendarNumber(firstDayOfTheMonth, monthDayNumber);
     let
         val temp = calcBlankNumber(firstDayOfTheMonth) + monthDayNumber;
         fun modSeven(day:int) = day - (day div 7) *7
     in
         modSeven(temp)
     end
    );


    fun getDayInWeek(day:int):string =
        case day of 0 => "Sun" |
                    1 => "Mon" |
                    2 => "Tue" |
                    3 => "Wed" |
                    4 => "Thu" |
                    5 => "Fri" |
                    6 => "Sat";

    val firstDayOfFeb    = printCalendarMonth("January", getMonthDayNumber("January", isLeapYear), firstDayOftheYear);
    val firstDayOfMarch  = printCalendarMonth("February", getMonthDayNumber("February", isLeapYear), getDayInWeek(firstDayOfFeb));
    val firstDayOfApril  = printCalendarMonth("March", getMonthDayNumber("March", isLeapYear), getDayInWeek(firstDayOfMarch));
    val firstDayOfMay    = printCalendarMonth("April", getMonthDayNumber("April", isLeapYear), getDayInWeek(firstDayOfApril));
    val firstDayOfJune   = printCalendarMonth("May", getMonthDayNumber("May", isLeapYear), getDayInWeek(firstDayOfMay));
    val firstDayOfJuly   = printCalendarMonth("June", getMonthDayNumber("June", isLeapYear), getDayInWeek(firstDayOfJune));
    val firstDayOfAugust = printCalendarMonth("July", getMonthDayNumber("July", isLeapYear), getDayInWeek(firstDayOfJuly));
    val firstDayOfSep    = printCalendarMonth("August", getMonthDayNumber("August", isLeapYear), getDayInWeek(firstDayOfAugust));
    val firstDayOfOct    = printCalendarMonth("September", getMonthDayNumber("September", isLeapYear), getDayInWeek(firstDayOfSep));
    val firstDayOfNov    = printCalendarMonth("October", getMonthDayNumber("October", isLeapYear), getDayInWeek(firstDayOfOct));
    val firstDayOfDec    = printCalendarMonth("November", getMonthDayNumber("November", isLeapYear), getDayInWeek(firstDayOfNov))
in
    printCalendarMonth("December", getMonthDayNumber("December", isLeapYear), getDayInWeek(firstDayOfDec))
end;

printCalendarOfOneYear("Tue", false); (* The first day of 2019 is Tuesday, and Year 2019 is not a leap year. *)
