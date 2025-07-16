import { Router } from 'express';
import {
    getStopBangAssessment
} from '../controllers/stopBang.controller'

const router = Router();

router.get('/', (req, res) => {
    const data = getStopBangAssessment()
    res.json(data);
});

export default router;
