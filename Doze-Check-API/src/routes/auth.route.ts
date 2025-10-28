import { Router } from 'express';
import { login } from '../controllers/auth.controller';

const router = Router();

router.post('/login', async (req, res) => {
    const data = await login(req.body);
    res.json(data);
});

export default router;
