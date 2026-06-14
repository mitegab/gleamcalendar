import ethiopian_calendar
import gleam/int
import gleam/io

pub fn main() -> Nil {
  let date = ethiopian_calendar.new_date(2016, 1, 1)
  let days = ethiopian_calendar.to_day_number(date)
  let back = ethiopian_calendar.from_day_number(days)
  io.println(ethiopian_calendar.format(back))
  io.println(case ethiopian_calendar.validate(date) {
    True -> "Valid date"
    False -> "Invalid date"
  })
  //io.println(ethiopian_calendar.format(date))
  //io.println(int.to_string(ethiopian_calendar.month_length(2016, 13)))
  io.println(
    int.to_string(
      ethiopian_calendar.to_day_number(ethiopian_calendar.new_date(2016, 1, 1)),
    ),
  )
}
