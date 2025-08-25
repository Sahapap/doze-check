import { Button, Card, CardContent, Container, Divider, Grid, Typography } from "@mui/material";
import HighRiskResultImg from '../assets/high-risk-result.png'
import MediumRiskResultImg from '../assets/medium-risk-result.png'
import LowRiskResultImg from '../assets/low-risk-result.png'
import HighRiskSign from '../assets/high-risk-sign.png'
import MediumRiskSign from '../assets/medium-risk-sign.png'
import LowRiskSign from '../assets/low-risk-sign.png'
import { useEffect, useMemo, useState } from "react";
import { useLocation, useNavigate } from "react-router-dom";

// const riskScore: number = 1

export default function AssessmentResult(){
    const location = useLocation()
    const navigate = useNavigate()
    const [riskScore, setRiskScore] = useState<number>(0)

    useEffect(() => {
        if(!location.state) {
            alert('กรุณากรอกข้อมูลแบบทดสอบ')
            navigate("/register")
        }
        const {riskAssessmentResult} = location.state
        if(riskAssessmentResult === 'Low') setRiskScore(1)
        else if (riskAssessmentResult === 'Medium') setRiskScore(2)
        else if (riskAssessmentResult === 'High') setRiskScore(3)
        else{
            alert('กรุณากรอกข้อมูลแบบทดสอบ')
            navigate("/register")
        }

    }, [location.state, navigate])

    useEffect(() => {
        window.scrollTo(0, 0)
    }, [])

    const color = useMemo(() => {
        switch (riskScore){
            case 1: //Low
                return '#00BB35'
            case 2: //Medium
                return '#FF7000'
            case 3: //High
                return '#920000'
            default:
                return '#FFF'
        }
    }, [riskScore])
    const imgSign = useMemo(() => {
        switch (riskScore){
            case 1: //Low
                return LowRiskSign
            case 2: //Medium
                return MediumRiskSign
            case 3: //High
                return HighRiskSign
            default:
                return ""
        }
    }, [riskScore])
    const imgResult = useMemo(() => {
        switch (riskScore){
            case 1: //Low
                return LowRiskResultImg
            case 2: //Medium
                return MediumRiskResultImg
            case 3: //High
                return HighRiskResultImg
            default:
                return ""
        }
    }, [riskScore])
    const wordingResult = useMemo(() => {
        switch (riskScore){
            case 1: //Low
                return "น้อย"
            case 2: //Medium
                return "ปานกลาง"
            case 3: //High
                return "สูง"
            default:
                return ""
        }
    }, [riskScore])
    const descriptionResult = useMemo(() => {
        switch (riskScore){
            case 1: //Low
                return "คุณเข้าเกณฑ์ความเสี่ยงน้อยต่อการเป็นโรคหยุดหายใจขณะหลับ"
            case 2: //Medium
                return "คุณเข้าเกณฑ์ความเสี่ยงปานกลางต่อการเป็นโรคหยุดหายใจขณะหลับ"
            case 3: //High
                return "คุณเข้าเกณฑ์ความเสี่ยงสูงต่อการเป็นโรคหยุดหายใจขณะหลับ"
            default:
                return ""
        }
    }, [riskScore])

    return(
        <div style={{ background: color, minHeight: '100vh' }}>
            <Container maxWidth="sm" sx={{ py: 2, backgroundColor: color }}>
                <Card sx={{ background: 'white', borderRadius: '20px', textAlign: 'center' }}>
                    <CardContent sx={{ pt: '30px', pb: 0}}>
                        <Typography variant="h5" sx={{ fontWeight: 'bold', mb: 1, color: '#223367' }}>
                            สรุปผลการทดสอบ
                        </Typography>
                        <Divider sx={{ my: 2, backgroundColor: {color}, width: '93px', height: '6px', margin: 'auto' }} />
                    </CardContent>
                    <div style={{ textAlign: 'right', paddingLeft: '10%' }}>
                        <img src={imgSign} width={'10%'} style={{ paddingRight: '5%'}}/>
                    </div>
                    <CardContent sx={{ pt: 0 }}>
                        {/* Image */}
                        <img src={imgResult} width={'29%'}/>
                    </CardContent>
                    <CardContent sx={{ pb: 0 }}>
                        <Typography variant="h5" sx={{ fontWeight: 'bold', mb: 1, color: '#223367' }}>
                            คุณมีความเสี่ยง
                        </Typography>
                    </CardContent>
                    <CardContent >
                        <Typography variant="h3" sx={{ fontWeight: 'bold', mb: 1, color: '#223367' }}>
                            {wordingResult}
                        </Typography>
                    </CardContent>
                    <CardContent >
                        <Typography variant="h5" sx={{ fontWeight: 'bold', mb: 1, color: '#223367' }}>
                            {descriptionResult}
                        </Typography>
                    </CardContent>
                    <CardContent >
                        <Grid container direction={'row'} sx={{ justifyContent: 'center', alignItems: 'center'}} spacing={2}>
                            <Button
                                sx={{
                                    py: 2,
                                    backgroundColor: '#223367',
                                    fontSize: '1.1rem',
                                    fontWeight: 'bold',
                                    width: '159px',
                                    height: '55px',
                                    color: '#FFFFFF'
                                }}
                                onClick={() => navigate('/register')}
                            >
                                กลับไปหน้าแรก
                            </Button>
                            <Button
                                sx={{
                                    py: 2,
                                    backgroundColor: '#223367',
                                    fontSize: '1.1rem',
                                    fontWeight: 'bold',
                                    width: '159px',
                                    height: '55px',
                                    color: '#FFFFFF'
                                }}
                            >
                                ออกจากระบบ
                            </Button>
                        </Grid>
                    </CardContent>
                </Card>
            </Container>
        </div>
    )
}