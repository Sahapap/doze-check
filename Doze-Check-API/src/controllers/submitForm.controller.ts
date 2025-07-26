import { realtimeDB } from '../firebase/firebase'
import { ISubmitForm } from '../interfaces/SubmitForm';

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