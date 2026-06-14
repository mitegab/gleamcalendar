import ethiopian_calendar
import gleam/int
import gleam/io

pub fn main() -> Nil {
  let date = ethiopian_calendar.new_date(2016, 1, 1)
  io.println(case ethiopian_calendar.validate(date) {
    True -> "Valid date"
    False -> "Invalid date"
  })
  //io.println(ethiopian_calendar.format(date))
  io.println(int.to_string(ethiopian_calendar.month_length(2016, 13)))
}
