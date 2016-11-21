module CalendarHelper
  def calendar(date = Date.today, &block)
    Calendar.new(self, date, block).table
  end

  class Calendar < Struct.new(:view, :date, :callback)
    HEADER = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]
    START_DAY = :monday
    TIMESLOTS = %w[uur9 uur10 uur11]

    delegate :content_tag, to: :view

    def table
      content_tag :table, class: "calendar" do
        header + week_rows
      end
    end

    def header
      content_tag :tr do
        # [ content_tag(:th, 'Time'),
          HEADER.map { |day|
            content_tag(:th, day)
          }.join.html_safe
        # ].join.html_safe
      end
    end

    def week_rows
      weeks.map do |week|
        content_tag :tr do
          # [ content_tag(:td, 'date'),
            week.map { |day| day_cell(day) }.join.html_safe
          # ].join.html_safe
        end
      end.join.html_safe
    end

    def day_cell(day)
      content_tag :td, view.capture(day, &callback), class: day_classes(day)
    end

    def day_classes(day)
      classes = []
      classes << "today" if day == Date.today
      classes << "notmonth" if day.month != date.month
      classes.empty? ? nil : classes.join(" ")
    end

    def weeks
      first = date.beginning_of_week(START_DAY)
      last = date.end_of_week(START_DAY)
      (first..last).to_a.in_groups_of(7)
    end
  end
end
