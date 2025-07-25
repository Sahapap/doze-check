import { Router } from 'express';
import { submitAssessment } from '../controllers/submitForm.controller'

const router = Router();

router.put('/', async(req, res) => {
    const body = req.body
    const result = await submitAssessment(body)
    res.json(result);
});

export default router;