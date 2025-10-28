process.env.ADMIN_USERNAMES = 'admin';
process.env.ADMIN_PASSWORDS = '1234';

import request from 'supertest';
import app from '../app';

describe('POST /api/auth/login', () => {
    it('should return success on correct credentials', async () => {
        const res = await request(app)
            .post('/api/auth/login')
            .send({ username: 'admin', password: '1234' });

        expect(res.status).toBe(200);
        expect(res.body).toEqual({
            success: true,
            message: 'Login successful',
        });
    });

    it('should fail on wrong credentials', async () => {
        const res = await request(app)
            .post('/api/auth/login')
            .send({ username: 'admin', password: 'wrong' });

        expect(res.status).toBe(200);
        expect(res.body).toEqual({
            success: false,
            message: 'Invalid username or password',
        });
    });

    it('should handle missing fields', async () => {
        const res = await request(app)
            .post('/api/auth/login')
            .send({ username: '' });

        expect(res.status).toBe(200);
        expect(res.body.success).toBe(false);
    });
});
