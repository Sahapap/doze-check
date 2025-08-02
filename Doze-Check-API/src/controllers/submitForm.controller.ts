import { realtimeDB } from '../firebase/firebase'
import { RiskScore } from '../interfaces/RiskScore';
import { ISubmitForm } from '../interfaces/SubmitForm';

interface ISumbitAssessmentResponse extends RiskScore {
    action: 'inserted' | 'update'
    id: string
}

const submitAssessment = async(payload: ISubmitForm): Promise<ISumbitAssessmentResponse> => {
    const snapshot = await realtimeDB.ref('messages')
        .orderByChild('keyName')
        .equalTo(`${payload.firstName}_${payload.lastName}`)
        .once('value')

    const riskScore = calculateRisk(payload)
    let res: any = {};
    if(snapshot.exists()){
        //update
        const firstKey = Object.keys(snapshot.val())[0];
        await realtimeDB.ref(`messages/${firstKey}`).update(payload);
        res = {action: "update", id: firstKey}
    }else{
        // creatte new
        const newRef = realtimeDB.ref('messages').push();
        await newRef.set({
            ...payload,
            keyName: `${payload.firstName}_${payload.lastName}`
        });
        res = { action: "inserted", id: newRef.key }
    }

    return {...res, ...riskScore}
}

const calculateRisk = (data: ISubmitForm): RiskScore => {
    const stopBangScore = data.stopBang.answers.reduce((acc, curr) => {
        if(curr.answer) acc += 1
        return acc
    }, 0)

    const epworthScore = data.epworth.answers.reduce((acc, curr) => {
        return acc += curr.score
    }, 0)

    const accidentHistoryScore = data.accidentHistory.answer ? 1 : 0

    const riskScore = [
        stopBangScore >= 3 ? 1 : 0,
        epworthScore >= 10 ? 1 : 0,
        accidentHistoryScore
    ].reduce((acc, curr) => acc+=curr, 0)

    return {
        stopBangScore: stopBangScore,
        epworthScore: epworthScore,
        accidentHistoryScore: accidentHistoryScore,
        riskAssessmentResult: riskScore === 3 ? 'High' : riskScore === 2 ? 'Medium' : 'Low'
    }
}


export {
    submitAssessment
}