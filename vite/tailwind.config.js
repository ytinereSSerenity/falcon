module.exports = {
    content: ["../templates/**/*.{html,js,php,tpl}", "./../templates/*.{html,js,php,tpl}", "./../templates/**/*.{html,js,php,tpl}", "./../modules/**/*.{html,js,php,tpl}", "../modules/**/*.{html,js,php,tpl}"],

  //   safelist: [
  //     'lg:w-6/12',
  //     {
  //       pattern: /.*/ 
  //     },
  // ],
  blocklist: [
    'collapse',
  ],
    important: true,
    theme: {
        extend: {
          screens: {
            lg: '992px'
          },
          colors: {
            primary: {
              100: '#F5007B', // main color eg.button
              200: '#FB3C9C', // main version 2 eg. hover main
              300: '#1E2039', //main 2 eq. buttons secondary
              400: '#2C2E4E', // main2 hover
            }, 
            gray: {
              100: "#F9F9F9", // inputs
              200: "#ECECEC", // borders
              300: '#808080', // labels 
              400: '#868686', // input texts
              500: '#8C9CA3', // eg. radio border (darker)
              600: '#F5F5F6', // inputs darker eq. quantity
              700: '#6B7383', //some text eq. cart sumary
            },
            red:{
              500: '#D64143'
            }
          },
        
          fontSize: {
            10: '0.625rem',
            11: '0.6875rem',
            13: '0.8125rem'
          },
          lineHeight: {},
          boxShadow: {
            DEFAULT: '0px -2px 18px 0px rgba(0, 0, 0, 0.10)'
          },
          spacing: {     
            600: '37.5rem'  
            },
          borderRadius: { 
                lg: '5px'
              }
     
        },
      },
    plugins: [],
}