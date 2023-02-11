const { createApp } = require('./app');

const app = createApp();


// init
const PORT = porcess.env.PORT || 8000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`)
})