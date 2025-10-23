export interface FirebaseResponse {
    [key: string]: Person;
}

interface Person {
    accidentHistory: {
        answer: boolean;
    };
    epworth: {
        answers: EpworthAnswer[];
    };
    firstName: string;
    hourSleepPerDay: number;
    keyName: string;
    lastName: string;
    phoneNumber: string;
    stopBang: {
        answers: StopBangAnswer[];
        height: number;
        neckCircumference: number;
        weight: number;
    };
}

interface EpworthAnswer {
    id: string;
    name: string;
    score: number;
}

export interface StopBangAnswer {
    id: string;
    name: string;
    answer: boolean;
}
