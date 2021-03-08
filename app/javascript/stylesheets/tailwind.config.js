module.exports = {
  purge: {
    // enabled: true, //comment this in to see purge in development
    content: [
    './app/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/javascript/**/*.vue']
    // Add any other JS files here (i.e. .jsx, .ts, etc...)
    },
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        brand: {
          light: "#3fbaeb",
          DEFAULT: "#0fa9e6",
          dark: "#0c87b8",
        }
      },
      fontFamily: {
        headline: "Poppins, sans-serif"
      }
    },
  },
  variants: {
    extend: { backgroundColor: ["active"] },
  },
  plugins: [],
}
