import { Router } from 'express';
import {
    getEpworthAssessment
} from '../controllers/epworth.controller'

const router = Router();

router.get('/', (req, res) => {
    const data = getEpworthAssessment()
    res.json(data);
});

export default router;
