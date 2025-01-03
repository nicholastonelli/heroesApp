const defaultTheme = require('tailwindcss/defaultTheme')
//import defaultTheme from 'tailwincss/defaultTheme'

module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*',
    './app/components/**/*.{html.erb,rb}'
  ],
  theme: {
    extend: {
      fontFamily: {
        //sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        sans: ['Noto Sans Variable']
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
