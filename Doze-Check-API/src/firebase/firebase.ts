import admin from 'firebase-admin'
import 'dotenv/config'
var serviceAccount = require("./doze-check-firebase-adminsdk-fbsvc-e191e0acaa.json")

admin.initializeApp({
    credential: admin.credential.cert(serviceAccount as admin.ServiceAccount),
    databaseURL: process.env.FIREBASE_DB_URL
})

const realtimeDB = admin.database()

export {
    admin,
    realtimeDB
}