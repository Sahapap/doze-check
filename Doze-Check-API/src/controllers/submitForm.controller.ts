import { AssessmentScore, RiskLevel } from '../enums/AssessmentScore';
import { realtimeDB } from '../firebase/firebase'
import { RiskScore } from '../interfaces/RiskScore';
import { ISubmitForm } from '../interfaces/SubmitForm';
import { PersonModel } from '../models/Person';

interface ISumbitAssessmentResponse extends RiskScore {
    action: 'inserted' | 'update'
    id: string
}

const submitAssessment = async(payload: ISubmitForm): Promise<ISumbitAssessmentResponse> => {
    const existData = await PersonModel.findOne({
        keyName: `${payload.firstName}_${payload.lastName}`
    })
    const riskScore = calculateRisk(payload)
    let res: any = {};
    if(existData){
        await PersonModel.updateOne({
            keyName: `${payload.firstName}_${payload.lastName}`
        }, {
            $set: {
                ...payload
            }
        })
    }else{
        await PersonModel.create({
            ...payload,
            keyName: `${payload.firstName}_${payload.lastName}`
        })
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

    const riskScore: number = [
        stopBangScore >= AssessmentScore.stopBang ? 1 : 0,
        epworthScore >= AssessmentScore.epworth ? 1 : 0,
        accidentHistoryScore
    ].reduce((acc, curr) => acc+=curr, 0)

    let riskAssessmentResult: RiskLevel
    switch(riskScore){
        case 3:
            riskAssessmentResult = RiskLevel.high;
            break
        case 2:
            riskAssessmentResult = RiskLevel.medium
            break
        default:
            riskAssessmentResult = RiskLevel.low
            break
    }

    return {
        stopBangScore: stopBangScore,
        epworthScore: epworthScore,
        accidentHistoryScore: accidentHistoryScore,
        riskAssessmentResult: riskAssessmentResult
    }
}


export {
    submitAssessment
}