import express from 'express';
import morgan from 'morgan';
import cors from 'cors'
import dotenv from 'dotenv'
import exampleRouter from './routes/example.route';
import stopBangRouter from './routes/stopBang.route'
import epworthRouter from './routes/epworth.route'
import accidentHistoryRouter from './routes/accidentHistory.route'
import submitFormRouter from './routes/submitForm.route'
import hourSleepPerDayRouter from './routes/hourSleepPerDay.route'
import { toCamelCase, toSnakeCase } from './utils/convertObject';

dotenv.config()

console.log('NODE_ENV => ', process.env.NODE_ENV)

const app = express();

app.use(express.json());

app.use(cors())

app.use(morgan('dev'));

app.use((req, res, next) => {
    req.body = toCamelCase(req.body)
    next()
})

app.use((req, res, next) => {
    const originalJson = res.json;
    res.json = function(data: any){
        const transformed = toSnakeCase(data)
        return originalJson.call(this, transformed)
    }
    next()
})

app.use('/api/example', exampleRouter);

app.use('/api/stop-bang', stopBangRouter);
app.use('/api/hour-sleep-per-day', hourSleepPerDayRouter)
app.use('/api/epworth', epworthRouter)
app.use('/api/accident-history', accidentHistoryRouter)
app.use('/api/submit', submitFormRouter)

export default app;
