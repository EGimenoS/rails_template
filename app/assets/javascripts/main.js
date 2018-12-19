LocalTime.config.i18n["es"] = {
  date: {
    dayNames: ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"],
    abbrDayNames: ["Dom", "Lun", "Mar", "Mie", "Ju", "Vie", "Sab"],
    monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
    abbrMonthNames: ["En", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago", "Sep", "Oct", "Nov", "Dic"],
    yesterday: "ayer",
    today: "hoy",
    tomorrow: "mañana",
    on: "en {date}",
    formats: { default: "%b %e, %Y", thisYear: "%b %e" }
  },
  time: {
    am: "am", pm: "pm", singular: "un {time}",
    singularAn: "un {time}", elapsed: "hace {time}",
    second: "segundo", seconds: "segundos",
    minute: "minuto", minutes: "minutos",
    hour: "hora", hours: "horas",
    formats: { default: "%l:%M%P" }
  },
  datetime: {
    at: "{date} a las {time}",
    formats: { default: "%B %e, %Y at %l:%M%P %Z" }
  }
};

LocalTime.config.locale = "es";