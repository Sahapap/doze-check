import { Button, Card, CardContent, Container, Divider, Grid, Typography } from "@mui/material";
import HighRiskResultImg from '../assets/high-risk-result.png'
import MediumRiskResultImg from '../assets/medium-risk-result.png'
import LowRiskResultImg from '../assets/low-risk-result.png'
import { useEffect, useMemo } from "react";
import { useLocation, useNavigate } from "react-router-dom";

const riskScore: number = 3

export default function AssessmentResult(){
    const location = useLocation()
    const navigate = useNavigate()

    useEffect(() => {
        console.log("location state: ", location.state)
        if(!location.state) {
            alert('กรุณากรอกข้อมูลแบบทดสอบ')
            navigate("/register")
        }

        // call api to calculate score
    }, [location.state, navigate])

    const color = useMemo(() => {
        switch (riskScore){
            case 1: //Low
                return '#00BB35'
            case 2: //Medium
                return '#FF7000'
            default: //High
                return '#920000'
        }
    }, [])
    const imgResult = useMemo(() => {
        switch (riskScore){
            case 1: //Low
                return LowRiskResultImg
            case 2: //Medium
                return MediumRiskResultImg
            default: //High
                return HighRiskResultImg
        }
    }, [])
    const wordingResult = useMemo(() => {
        switch (riskScore){
            case 1: //Low
                return "น้อย"
            case 2: //Medium
                return "ปานกลาง"
            default: //High
                return "สูง"
        }
    }, [])
    const descriptionResult = useMemo(() => {
        switch (riskScore){
            case 1: //Low
                return "คุณเข้าเกณฑ์ความเสี่ยงน้อยต่อการเป็นโรคหยุดหายใจขณะหลับ"
            case 2: //Medium
                return "คุณเข้าเกณฑ์ความเสี่ยงปานกลางต่อการเป็นโรคหยุดหายใจขณะหลับ"
            default: //High
                return "คุณเข้าเกณฑ์ความเสี่ยงสูงต่อการเป็นโรคหยุดหายใจขณะหลับ"
        }
    }, [])

    return(
        <div style={{ background: color, minHeight: '100vh' }}>
            <Container maxWidth="sm" sx={{ py: 2, backgroundColor: color }}>
                <Card sx={{ background: 'white', borderRadius: '20px', textAlign: 'center' }}>
                    <CardContent sx={{ pt: '30px'}}>
                        <Typography variant="h5" sx={{ fontWeight: 'bold', mb: 1, color: '#223367' }}>
                            สรุปผลการทดสอบ
                        </Typography>
                        <Divider sx={{ my: 2, backgroundColor: {color}, width: '93px', height: '6px', margin: 'auto' }} />
                    </CardContent>
                    <CardContent >
                        {/* Image */}
                        <img src={imgResult} width={'34%'} />
                    </CardContent>
                    <CardContent >
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