const { createApp } = require('./app');

const app = createApp();


// init
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`)
})