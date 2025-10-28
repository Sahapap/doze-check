import cors from 'cors';
import dotenv from 'dotenv';
import express from 'express';
import rateLimit from 'express-rate-limit';
import morgan from 'morgan';
import { auth } from './middlewares/auth.middleware';
import accidentHistoryRouter from './routes/accidentHistory.route';
import authRouter from './routes/auth.route';
import epworthRouter from './routes/epworth.route';
import exampleRouter from './routes/example.route';
import hourSleepPerDayRouter from './routes/hourSleepPerDay.route';
import reportRouter from './routes/report.route';
import stopBangRouter from './routes/stopBang.route';
import submitFormRouter from './routes/submitForm.route';
import { toCamelCase, toSnakeCase } from './utils/convertObject';

dotenv.config();

console.log('NODE_ENV => ', process.env.NODE_ENV);

const app = express();

app.use(express.json());

app.use(cors());

app.use(morgan('dev'));

// 📌 Rate limiter: จำกัด 100 requests ต่อ IP ต่อ 15 นาที
const limiter = rateLimit({
    windowMs: 15 * 60 * 1000, // 15 นาที
    max: 100, // จำกัดสูงสุด 100 requests
    standardHeaders: true, // ส่ง RateLimit-* header กลับไปด้วย
    legacyHeaders: false, // ไม่ส่ง X-RateLimit-* header เก่า
    message: {
        status: 429,
        error: 'Too many requests, please try again later.',
    },
});

app.use((req, res, next) => {
    req.body = toCamelCase(req.body);
    next();
});

app.use((req, res, next) => {
    const originalJson = res.json;
    res.json = function (data: any) {
        const transformed = toSnakeCase(data);
        return originalJson.call(this, transformed);
    };
    next();
});

app.use('/api/example', exampleRouter);
app.use('/api/auth', limiter, authRouter);

app.use('/api/stop-bang', stopBangRouter);
app.use('/api/hour-sleep-per-day', hourSleepPerDayRouter);
app.use('/api/epworth', epworthRouter);
app.use('/api/accident-history', accidentHistoryRouter);
app.use('/api/submit', limiter, submitFormRouter);
app.use('/api/report', auth, reportRouter);

app.get('/api/health', (req, res) => {
    res.send('OK');
});

export default app;
