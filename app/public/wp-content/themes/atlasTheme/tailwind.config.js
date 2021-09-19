module.exports = {
  purge: [
    './css/main.css',
    './js/main.js',
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
        montserrat: ['Montserrat'],
        abhaya: ['Abhaya Libre'],
      },
      backgroundImage: {
        'footer-background': "url('../atlasTheme/img/footerBG.jpg')",
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
