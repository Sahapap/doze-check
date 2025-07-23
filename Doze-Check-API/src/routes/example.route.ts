import { Router } from 'express';
import { realtimeDB } from '../firebase/firebase'

const router = Router();

router.get('/', (req, res) => {
  res.json({ message: 'Hello from example route!' });
});

router.get('/test', async(req, res) => {
  try {
    const snapshot = await realtimeDB.ref('messages').once('value');
    const data = snapshot.val();
    res.json(data);
  } catch (err) {
    console.error(err);
    res.status(500).send('Error reading from Realtime DB');
  }
})

router.get('/test/:name', async(req, res) => {
  try {
    const name = req.params.name
    const snapshot = await realtimeDB.ref('messages')
      .orderByChild('name')
      .equalTo(name)
      .once('value')
    const data = snapshot.val();

    res.json(data);
  } catch (err) {
    console.error(err);
    res.status(500).send('Error reading from Realtime DB');
  }
})

router.post('/test', async (req, res) => {
  try {
    const { name, message } = req.body;
    const newRef = realtimeDB.ref('messages').push();
    await newRef.set({ name, message });

    res.status(201).json({ id: newRef.key, name, message });
  } catch (err) {
    console.error(err);
    res.status(500).send('Error writing to Realtime DB');
  }
});

export default router;
