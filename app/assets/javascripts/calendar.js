//= require jquery
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require turbolinks
//= require moment 
//= require fullcalendar
//= require_tree .

// Optional locale  change '// require' --> '//= require' to enable
// require fullcalendar/locale-all
// or sepecific locale
// require fullcalendar/locale/ms

// Optional addons  change '// require' --> '//= require' to enable
// require fullcalendar/scheduler
// require fullcalendar/gcal


var initialize_calendar;
initialize_calendar = function() {
  $('.calendar').each(function(){
    var calendar = $(this);
    calendar.fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
        },
      selectable: true,
      selectHelper: true,
      editable: true,
      eventLimit: true,
      events: 'meetings/json_meeting',
     

     eventDrop: function(meetings, delta, revertFunc) {
     // console.log(delta)
     // console.log(revertFunc)

        meetings_data = { 
          meeting: {
            id: meetings.id,
            start: meetings.start.format(),
            end: meetings.end.format(),
            color: meetings.color,
            meeting_url: 'meetings/'+ meetings.id,
          }  
        };

         //console.log(meetings_data)

      $.ajax({
            url: meetings_data.meeting.meeting_url,
            data: meetings_data,
            type: 'PATCH'
      });
    }
    

    });
  })
};
$(document).on('turbolinks:load', initialize_calendar);