import { yupResolver } from '@hookform/resolvers/yup';
import { Controller, useForm } from 'react-hook-form';
import * as yup from 'yup';
import FormLayout from '../layouts/FormLayout';
import { Button, Card, CardContent, Divider, FormControl, FormHelperText, Radio, RadioGroup, Typography } from '@mui/material';
import { CustomLabel } from '../components/CustomeRadioButton';
import { useLocation, useNavigate } from 'react-router-dom';
import { useEffect, useState } from 'react';
import axiosInstance from '../api/axiosInstance';

const schema = yup.object({
    isHasAccidentHistory: yup.string().required('กรุณาตอบคำถาม')
});

type AccidentHistoryAccessmentFormData = {
    isHasAccidentHistory: string
}

export default function AccidentHistoryAssessment(){
    const location = useLocation()
    const navigate = useNavigate()
    const { control, handleSubmit, formState: {errors} } = useForm<AccidentHistoryAccessmentFormData>({
        mode: 'onChange',
        resolver: yupResolver(schema)
    })

    const [isLoading, setIsLoading] = useState<boolean>(false)

    useEffect(() => {
        if(!location.state) {
            alert('กรุณากรอกข้อมูลและทำแบบสอบทดสอบ Stop-Bang และ Epworth ')
            navigate("/register")
        }
    }, [location.state, navigate])

    useEffect(() => {
        window.scrollTo(0, 0)
    }, [])

    const onSubmit = async(data: AccidentHistoryAccessmentFormData) => {
        setIsLoading(true)
        const stateData = location.state

        const payload = {
            ...stateData,
            accidentHistory: {
                answer: Boolean(Number(data.isHasAccidentHistory))
            }
        }
        try{
             //call API to calculated score
            const res = await axiosInstance('/submit', { method: 'POST', data: payload})

            navigate('/assessment-result', {
                state: {
                    ...res.data
                }
            })
        }catch(e){
            console.error(e)
            alert("เกิดข้อผิดพลาก กรุณาลองใหม่อีกครั้ง")
        }finally{
            setIsLoading(false)
        }
    }
    return(
        <FormLayout
            backgroundColor='#FF9376'
            header={
                <>
                    <Typography variant="h5" sx={{ fontWeight: 'bold', mb: 1, color: '#223367' }}>
                        ประวัติเคยเกิดอุบัติเหตุจากความง่วงนอนขณะขับรถ
                    </Typography>
                    <Divider sx={{ my: 2, backgroundColor: '#FF9376' }} />
                </>
            }
            formBody={
                <form onSubmit={handleSubmit(onSubmit)}>
                    <Card sx={{ mb: 1, boxShadow: 0 }}>
                        <CardContent>
                            <Controller
                                name='isHasAccidentHistory'
                                control={control}
                                render={({field}) => (
                                    <FormControl error={!!errors['isHasAccidentHistory']} fullWidth>
                                        <RadioGroup
                                            {...field}
                                        >
                                            <CustomLabel
                                                value={1}
                                                control={
                                                    <Radio
                                                        sx={{
                                                            '&.Mui-checked': {
                                                                color: '#473BF0',
                                                            }
                                                        }}
                                                    />
                                                }
                                                label="เคยเกิดอุบัติเหตุ จากความง่วงนอนขณะขับรถ"
                                                sx={{
                                                    backgroundColor: field.value === '1' ? '#EDECFE' : '#F8F9FB',
                                                    color: field.value === '1' ? '#4E4D49' : '#4E4D49',
                                                    textAlign: 'left'
                                                }}
                                            />
                                            <CustomLabel
                                                value={0}
                                                control={
                                                    <Radio
                                                        sx={{
                                                            '&.Mui-checked': {
                                                                color: '#473BF0',
                                                            }
                                                        }}
                                                    />
                                                }
                                                label="ไม่เคยเกิดอุบัติเหตุ จากความง่วงนอนขณะขับรถ"
                                                sx={{
                                                    backgroundColor: field.value === '0' ? '#EDECFE' : '#F8F9FB',
                                                    color: field.value === '0' ? '#4E4D49' : '#4E4D49',
                                                    textAlign: 'left'
                                                }}
                                            />
                                        </RadioGroup>
                                        {errors['isHasAccidentHistory'] && (
                                            <FormHelperText>{errors['isHasAccidentHistory']?.message}</FormHelperText>
                                        )}
                                    </FormControl>
                                )}
                            />
                        </CardContent>
                        <CardContent sx={{ paddingBottom: 0 }}>
                            <Divider sx={{ my: 2, backgroundColor: '#473BF0' }} />
                        </CardContent>
                    </Card>
                    <Card sx={{ mb: 1, boxShadow: 0 }}>
                        <CardContent sx={{ textAlign: 'center' }}>
                            <Button
                                type="submit"
                                variant="contained"
                                size="large"
                                sx={{
                                    py: 2,
                                    backgroundColor: '#223367   ',
                                    '&:hover': {
                                        backgroundColor: '#333'
                                    },
                                    fontSize: '1.1rem',
                                    fontWeight: 'bold',
                                }}
                                disabled={isLoading}
                            >
                                {isLoading ? "กำลังคำนวณ": "ดูผลการประเมิน"}
                            </Button>
                        </CardContent>
                    </Card>
                </form>
            }
        />
    )
}