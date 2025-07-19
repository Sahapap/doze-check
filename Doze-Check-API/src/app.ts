import express from 'express';
import exampleRouter from './routes/example.route';
import stopBangRouter from './routes/stopBang.route'
import epworthRouter from './routes/epworth.route'
import accidentHistoryRouter from './routes/accidentHistory.route'
import morgan from 'morgan';
import cors from 'cors'

const app = express();

app.use(express.json());

app.use(cors())

app.use(morgan('dev'));

app.use('/api/example', exampleRouter);

app.use('/api/stop-bang', stopBangRouter);
app.use('/api/epworth', epworthRouter)
app.use('/api/accident-history', accidentHistoryRouter)

export default app;
