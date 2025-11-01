interface LabelValue {
    label: string;
    value: number;
}

interface QuestionStatistic {
    id: string;
    results: LabelValue[];
}

export interface ReportData {
    total: number;
    demographics: {
        gender: LabelValue[];
        age: LabelValue[];
    };
    assessments: {
        stopBang: QuestionStatistic[];
        epworth: QuestionStatistic[];
        accidentHistory: LabelValue[];
    };
}