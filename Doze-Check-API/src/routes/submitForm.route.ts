import { Router } from 'express';
import { submitAssessment } from '../controllers/submitForm.controller';

const router = Router();

router.post('/', async(req, res) => {
    console.log('call /POST submit')
    const result = await submitAssessment(req.body)
    res.json(result);
});

router.put('/', async(req, res) => {
    console.log('call /PUT submit')
    const result = await submitAssessment(req.body)
    res.json(result);
});

export default router;