export interface RiskScore{
    stopBangScore: number
    epworthScore: number
    accidentHistoryScore: number
    riskAssessmentResult: 'High' | 'Medium' | 'Low'
}