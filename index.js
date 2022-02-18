import express from "express"
import db from "./config/db.js"
import dietelaRoutes from "./routes/index.js"
import cors from "cors"
const app = express()

const port = process.env.PORT || 5000

try {
    await db.authenticate()
    console.log('DB Connected!')
} catch (error) {
    console.log('DB Connect failed!')
}

app.use(cors())
app.use(express.json())
app.use('/api', dietelaRoutes)


app.listen(port, ()=> console.log('Server listen to port 5000'))