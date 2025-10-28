import dotenv from 'dotenv';
import jwt from 'jsonwebtoken';

dotenv.config();

const usernames = process.env.ADMIN_USERNAMES?.split(',') || [];
const passwords = process.env.ADMIN_PASSWORDS?.split(',') || [];
const accessSecret = process.env.ACCESS_SECRET || '';
const refreshSecret = process.env.REFRESH_SECRET || '';

interface Credentials {
    username: string;
    password: string;
}

interface ILoginResponse {
    success: boolean;
    message: string;
    accessToken?: string;
    refreshToken?: string;
}

const canLoginAsAdmin = (credentials: Credentials): boolean => {
    const { username, password } = credentials;
    const userIndex = usernames.findIndex((u) => u === username);
    if (userIndex === -1) return false;
    return passwords[userIndex] === password;
};

const login = async (credentials: Credentials): Promise<ILoginResponse> => {
    if (canLoginAsAdmin(credentials)) {
        const accessToken = jwt.sign(
            { username: credentials.username },
            accessSecret,
            { expiresIn: '1h' }
        );

        const refreshToken = jwt.sign(
            { username: credentials.username },
            refreshSecret,
            { expiresIn: '7d' }
        );

        return {
            success: true,
            message: 'Login successful',
            accessToken,
            refreshToken,
        };
    }
    return { success: false, message: 'Invalid username or password' };
};

const refresh = (token: string): ILoginResponse => {
    try {
        const decoded = jwt.verify(token, refreshSecret) as jwt.JwtPayload;
        const username = decoded.username;
        const newAccessToken = jwt.sign({ username }, accessSecret, {
            expiresIn: '1h',
        });
        return {
            success: true,
            message: 'Token refreshed successfully',
            accessToken: newAccessToken,
        };
    } catch (error) {
        return { success: false, message: 'Invalid refresh token' };
    }
};

export { login, refresh };

