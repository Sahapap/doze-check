export interface ISubmitForm {
    firstName: string;
    lastName: string;
    phoneNumber: string;
    hourSleepPerDay: number;

    stopBang: StopBangSection;   // Boolean-based assessment
    epworth: EpworthSection;     // Numeric-based assessment
    accidentHistory: AccidentSection; // Boolean single question

    keyName?: string;            // Optional unique key
}

// ---- STOP-BANG (Boolean answers) ----
export interface StopBangSection {
    height: number;              // cm
    weight: number;              // kg
    // gender: 'male' | 'female';
    neckCircumference: number;   // cm
    answers: BooleanAnswer[];    // dynamic Q1-Q8
}

export interface BooleanAnswer {
    id: string;       // e.g. "stop-bang-01"
    name: string;     // e.g. "snoring"
    answer: boolean;
}

// ---- EPWORTH (Numeric answers) ----
export interface EpworthSection {
    answers: NumericAnswer[];    // 0–3 answers
}

export interface NumericAnswer {
    id: string;       // e.g. "epworth-assessment-01"
    name: string;     // e.g. "situation1"
    score: number;    // 0–3
}

// ---- Accident History (Boolean single question) ----
export interface AccidentSection {
    answer: boolean;  // true/false
}