import { Router } from 'express';
import {
    getHourSleepPerDayChoice
} from '../controllers/hourSleepPerDay.controller'

const router = Router();

router.get('/', (req, res) => {
    const data = getHourSleepPerDayChoice()
    res.json(data);
});

export default router;
