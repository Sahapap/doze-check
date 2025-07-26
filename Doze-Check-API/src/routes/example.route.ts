import { Router } from 'express';
import { realtimeDB } from '../firebase/firebase'

const router = Router();

router.get('/', (req, res) => {
  res.json({ message: 'Hello from example route!' });
});

router.post('/test', async (req, res) => {
  try {
    console.log('body: ', req.body)


    res.status(201).json({ message: "Complete", stringTest: 1 });
  } catch (err) {
    console.error(err);
    res.status(500).send('Error writing to Realtime DB');
  }
});

export default router;
