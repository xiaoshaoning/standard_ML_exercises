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

fun calcBlankNumber(firstDay:string):int =
if firstDay = "Sun" then 0
else if firstDay = "Mon" then 1
else if firstDay = "Tue" then 2
else if firstDay = "Wed" then 3
else if firstDay = "Thu" then 4
else if firstDay = "Fri" then 5
else if firstDay = "Sat" then 6
else ~1
;

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
printCalendarLine(
                 printCalendarLine(
                                   printCalendarLine(
                                                    printCalendarLine(
                                                                     printCalendarLine(1, firstDay, lastDay),
                                                                     "Sun", lastDay),
                                                    "Sun", lastDay),
                                   "Sun", lastDay),
                 "Sun", lastDay);

print("\t\t\tSeptermber\n");
print("\n");
print("Sun\tMon\tTue\tWed\tThu\tFri\tSat\n");
printCalendarNumber("Thu", 30);
