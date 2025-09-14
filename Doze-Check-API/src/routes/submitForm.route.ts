import { Router } from 'express';
import { submitAssessment } from '../controllers/submitForm.controller';

const router = Router();

router.put('/', async(req, res) => {
    const result = await submitAssessment(req.body)
    res.json(result);
});

export default router;