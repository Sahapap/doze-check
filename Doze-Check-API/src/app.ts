import express from 'express';
import exampleRouter from './routes/example.route';
import stopBangRouter from './routes/stopBang.route'
import epworthRouter from './routes/epworth.route'
import accidentHistoryRouter from './routes/accidentHistory.route'

const app = express();

app.use(express.json());
app.use('/api/example', exampleRouter);

app.use('/api/stop-bang', stopBangRouter);
app.use('/api/epworth', epworthRouter)
app.use('/api/accident-history', accidentHistoryRouter)

export default app;
