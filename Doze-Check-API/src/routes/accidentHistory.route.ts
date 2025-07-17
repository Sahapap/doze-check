import { Router } from 'express';
import {
    getAccidentHistoryAssessment
} from '../controllers/accidentHistory.controller'

const router = Router();

router.get('/', (req, res) => {
    const data = getAccidentHistoryAssessment()
    res.json(data);
});

export default router;
