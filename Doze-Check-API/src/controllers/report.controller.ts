import { realtimeDB } from '../firebase/firebase'
import { toCamelCase } from '../utils/convertObject'
import { FirebaseResponse } from '../interfaces/FirebaseResponse'
import { DashboardData } from '../interfaces/Report'

// จำนวนทั้งหมด
// จำนวนชาย
// จำนวนหญิง
// ช่วงอายุ
// สถิติการตอบแต่ละคำถาม

interface IStopBangResultStatistic{
    [key: string]: {
        yes: number,
        no: number
    }
}

interface IEpworthResultStatistic{
    [key: string]: {
        scoreZero: number,
        scoreOne: number,
        scoreTwo: number,
        scoreThree: number,
        scoreFour: number
    }
}

interface IAccidentHistoryResultStatistic{
    yes: number
    no: number
}

const getReport = async() => {
    const snapshot = await realtimeDB.ref('messages').once('value')
    const data = snapshot.val()
    const formatData: FirebaseResponse = toCamelCase(data)

    let maleCount = 0, femaleCount = 0, total = 0
    let ageMoreThanFifty = 0, ageLessThanFifty = 0
    let stopBangResultStatistic: IStopBangResultStatistic = {
        "stop-bang-01": { yes: 0, no: 0 },
        "stop-bang-02": { yes: 0, no: 0},
        "stop-bang-03": { yes: 0, no: 0},
        "stop-bang-04": { yes: 0, no: 0},
        "stop-bang-05": { yes: 0, no: 0},
        "stop-bang-06": { yes: 0, no: 0},
        "stop-bang-07": { yes: 0, no: 0},
        "stop-bang-08": { yes: 0, no: 0}
    }
    let epworthResultStatistic: IEpworthResultStatistic = {
        "epworth-assessment-01": { scoreZero: 0, scoreOne: 0, scoreTwo: 0, scoreThree: 0, scoreFour: 0 },
        "epworth-assessment-02": { scoreZero: 0, scoreOne: 0, scoreTwo: 0, scoreThree: 0, scoreFour: 0 },
        "epworth-assessment-03": { scoreZero: 0, scoreOne: 0, scoreTwo: 0, scoreThree: 0, scoreFour: 0 },
        "epworth-assessment-04": { scoreZero: 0, scoreOne: 0, scoreTwo: 0, scoreThree: 0, scoreFour: 0 },
        "epworth-assessment-05": { scoreZero: 0, scoreOne: 0, scoreTwo: 0, scoreThree: 0, scoreFour: 0 },
        "epworth-assessment-06": { scoreZero: 0, scoreOne: 0, scoreTwo: 0, scoreThree: 0, scoreFour: 0 },
        "epworth-assessment-07": { scoreZero: 0, scoreOne: 0, scoreTwo: 0, scoreThree: 0, scoreFour: 0 },
        "epworth-assessment-08": { scoreZero: 0, scoreOne: 0, scoreTwo: 0, scoreThree: 0, scoreFour: 0 },
    }
    let accidentHistoryResultStatistic: IAccidentHistoryResultStatistic = {
        yes: 0,
        no: 0
    }
    total = Object.keys(formatData).length
    Object.keys(formatData).forEach(key => {
        const current = formatData[key]
        const gender = current.stopBang?.answers.find(f => f.name === "gender")
        if(gender?.answer){
            maleCount +=1
        }else{
            femaleCount += 1
        }

        const age = current.stopBang?.answers.find(f => f.name === "age")
        if(age?.answer){
            ageMoreThanFifty += 1
        }else{
            ageLessThanFifty += 1
        }

        current.stopBang.answers.forEach(e => {
            let currentStopBang = stopBangResultStatistic[e.id]
            if(e.answer){
                currentStopBang.yes += 1
            }else{
                currentStopBang.no += 1
            }
        })

        current.epworth.answers.forEach(e => {
            let currentEpworth = epworthResultStatistic[e.id]
            switch(e.score){
                case 0:
                    currentEpworth.scoreZero += 1
                    return
                case 1:
                    currentEpworth.scoreOne += 1
                    return
                case 2:
                    currentEpworth.scoreTwo += 1
                    return
                case 3:
                    currentEpworth.scoreThree += 1
                    return
                case 4:
                    currentEpworth.scoreFour += 1
                    return
                default:
                    return
            }
        })

        if(current.accidentHistory.answer){
            accidentHistoryResultStatistic.yes += 1
        }else{
            accidentHistoryResultStatistic.no += 1
        }
    })

    const result: DashboardData = {
        total,
        demographics: {
            gender: [
                {
                    label: "Male",
                    value: maleCount
                },
                {
                    label: "Female",
                    value: femaleCount
                }
            ],
            age: [
                {
                    label: "More than 50",
                    value: ageMoreThanFifty
                },
                {
                    label: "Less than 50",
                    value: ageLessThanFifty
                }
            ]
        },
        assessments: {
            stopBang: Object.entries(stopBangResultStatistic).map(([key, value]) => ({
                id: key,
                results: Object.entries(value).map(([label, val]) => ({
                    label,
                    value: val,
                })),
            })),
            epworth: Object.entries(epworthResultStatistic).map(([key, value]) => ({
                id: key,
                results: Object.entries(value).map(([label, val]) => ({
                    label,
                    value: val,
                })),
            })),
            accidentHistory: Object.entries(accidentHistoryResultStatistic).map(([key, value]) => ({
                label: key,
                value: value
            }))
        }
    }
    return result
}

export {
    getReport
}