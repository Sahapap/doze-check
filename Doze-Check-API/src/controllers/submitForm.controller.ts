import { realtimeDB } from '../firebase/firebase'

export interface ISubmitForm{
    firstName: string
    lastName: string
    phoneNumber: string
    hourSleepPerDay: number
    stopBang: {
        height: number
        weight: number
        gender: string
        neckCircumference: number
        snoring: boolean
        tired: boolean
        observed: boolean
        bloodPressure: boolean
        bmiMoreThan30: boolean
        ageMoreThan50: boolean
        neckCircumferenceMoreThan40: boolean
        isMale: boolean
    }
    epworth: {
        sittingAndReading: number
        watchingTv: number
        stillSitting: number
        sittingInCar: number
        lyingBack: number
        talking: number
        launchSitting: number
        carStopping: number
    }
    accidentHistory: boolean,
    keyName?: string
}

const submitAssessment = async(payload: ISubmitForm) => {
    const snapshot = await realtimeDB.ref('messages')
        .orderByChild('keyName')
        .equalTo(`${payload.firstName}_${payload.lastName}`)
        .once('value')

    if(snapshot.exists()){
        //update
        const firstKey = Object.keys(snapshot.val())[0];
        await realtimeDB.ref(`messages/${firstKey}`).update(payload);

        return {action: "update", id: firstKey}
    }else{
        // creatte new
        const newRef = realtimeDB.ref('messages').push();
        await newRef.set({
            ...payload,
            keyName: `${payload.firstName}_${payload.lastName}`
        });
        return { action: "inserted", id: newRef.key }
    }
}

export {
    submitAssessment
}