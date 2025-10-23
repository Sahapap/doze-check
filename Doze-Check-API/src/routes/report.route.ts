import { Router } from 'express';
import { getReport } from '../controllers/report.controller'

const router = Router();

router.get('/', async(req, res) => {
    const result = await getReport()
    const data = result
    res.json(data);
});

export default router;