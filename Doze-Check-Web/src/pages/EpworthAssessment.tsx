import {
    Box,
    Card,
    CardContent,
    Typography,
    RadioGroup,
    Button,
    Divider,
    useMediaQuery,
    useTheme,
    FormControl,
    FormHelperText
} from '@mui/material';
import { useForm, Controller } from 'react-hook-form';
import * as yup from 'yup';
import { yupResolver } from '@hookform/resolvers/yup';
import EPWORTH_QUESTIONS from '../data/epworth.json'
import FormLayout from '../layouts/FormLayout';
import { CustomLabel, CustomRadio } from '../components/CustomeRadioButton';
import { useLocation, useNavigate } from 'react-router-dom';
import { useEffect } from 'react';

// Validation schema
const schema = yup.object({
    situation1: yup.string().required('กรุณาเลือกคำตอบสำหรับสถานการณ์นี้'),
    situation2: yup.string().required('กรุณาเลือกคำตอบสำหรับสถานการณ์นี้'),
    situation3: yup.string().required('กรุณาเลือกคำตอบสำหรับสถานการณ์นี้'),
    situation4: yup.string().required('กรุณาเลือกคำตอบสำหรับสถานการณ์นี้'),
    situation5: yup.string().required('กรุณาเลือกคำตอบสำหรับสถานการณ์นี้'),
    situation6: yup.string().required('กรุณาเลือกคำตอบสำหรับสถานการณ์นี้'),
    situation7: yup.string().required('กรุณาเลือกคำตอบสำหรับสถานการณ์นี้'),
    situation8: yup.string().required('กรุณาเลือกคำตอบสำหรับสถานการณ์นี้'),
});

type EpworthAssessmentFormData = {
    situation1: string;
    situation2: string;
    situation3: string;
    situation4: string;
    situation5: string;
    situation6: string;
    situation7: string;
    situation8: string;
};

export default function EpworthAssessment() {
    const location = useLocation()
    const navigate = useNavigate()
    const theme = useTheme();
    const isMobile = useMediaQuery(theme.breakpoints.down('sm'));

    useEffect(() => {
        if(!location.state) {
            alert('กรุณากรอกข้อมูล และทำแบบทดสอบ Stop-Bang')
            navigate("/register")
        }
    }, [location.state, navigate])

    useEffect(() => {
        window.scrollTo(0, 0)
    }, [])

    const {
        control,
        handleSubmit,
        formState: { errors },
    } = useForm<EpworthAssessmentFormData>({
        resolver: yupResolver(schema),
        mode: 'onChange'
    });

    const onSubmit = (data: EpworthAssessmentFormData) => {
        const stateData = location.state
        const epworth = {
            answers: EPWORTH_QUESTIONS.assessments.map(m => {
                return {
                    id: m.id,
                    name: m.name,
                    score: Number(data[m.name as keyof EpworthAssessmentFormData])
                }
            })
        }
        navigate('/accident-history-assessment', {
            state: {
                ...stateData,
                epworth: epworth
            }
        })
    };

    const QuestionCard: React.FC<{
        title: string;
        // description: string;
        name: keyof EpworthAssessmentFormData;
        color?: string;
    }> = ({ title, /*description,*/ name, color = '#6366f1' }) => (
        <Card sx={{ mb: 1, boxShadow: 0, }}>
            <CardContent sx={{ pb: 0, pt: 0 }}>
                <Box sx={{ display: 'flex', alignItems: 'center', mb: 2 }}>
                <Typography
                    variant="h6"
                    sx={{
                        color: color,
                        fontWeight: 'bold',
                        fontSize: isMobile ? '1rem' : '1.1rem'
                    }}
                >
                    {title}
                </Typography>
                </Box>
                <Controller
                    name={name}
                    control={control}
                    render={({ field }) => (
                        <FormControl error={!!errors[name]} fullWidth>
                        <RadioGroup
                            {...field}
                            row={!isMobile}
                            sx={{
                                justifyContent: isMobile ? 'flex-start' : 'space-between',
                                gap: 0.5,
                                display: 'flex',
                                flexDirection: 'row',
                                border: '1px solid #d1d5db',
                                borderRadius: '8px',
                                overflow: 'hidden',
                                backgroundColor: '#ffffff',
                                boxShadow: '0 1px 3px rgba(0, 0, 0, 0.1)',
                            }}
                        >
                            <CustomLabel
                                value="0"
                                control={<CustomRadio />}
                                label="0"
                                //   checked={selectedValue === 'ไม่ใช่'}
                                sx={{
                                    borderTopLeftRadius: '8px',
                                    borderBottomLeftRadius: '8px',
                                    backgroundColor: field.value === '0' ? '#6366f1' : '#f3f4f6',
                                    color: field.value === '0' ? '#ffffff' : '#6b7280',
                                    textAlign: 'center'
                                }}
                            />
                            <CustomLabel
                                value="1"
                                control={<CustomRadio />}
                                label="1"
                                sx={{
                                    backgroundColor: field.value === '1' ? '#6366f1' : '#f3f4f6',
                                    color: field.value === '1' ? '#ffffff' : '#6b7280',
                                    textAlign: 'center'
                                }}
                            />
                            <CustomLabel
                                value="2"
                                control={<CustomRadio />}
                                label="2"
                                sx={{
                                    backgroundColor: field.value === '2' ? '#6366f1' : '#f3f4f6',
                                    color: field.value === '2' ? '#ffffff' : '#6b7280',
                                    textAlign: 'center'
                                }}
                            />
                            <CustomLabel
                                value="3"
                                control={<CustomRadio />}
                                label="3"
                                sx={{
                                    borderTopRightRadius: '8px',
                                    borderBottomRightRadius: '8px',
                                    backgroundColor: field.value === '3' ? '#6366f1' : '#f3f4f6',
                                    color: field.value === '3' ? '#ffffff' : '#6b7280',
                                    textAlign: 'center'
                                }}
                            />
                        </RadioGroup>
                        {errors[name] && (
                            <FormHelperText>{errors[name]?.message}</FormHelperText>
                        )}
                        </FormControl>
                    )}
                />
            </CardContent>
            <CardContent sx={{ paddingBottom: 0 }}>
                <Divider sx={{ my: 2, backgroundColor: '#473BF0' }} />
            </CardContent>
        </Card>
    );

    return (
        <FormLayout
            backgroundColor='#48B2F3'
            header={
                <>
                    <Typography variant="h5" sx={{ fontWeight: 'bold', mb: 1, color: '#223367' }}>
                        แบบทดสอบ
                    </Typography>
                    <Typography variant="h6" sx={{ mb: 2, color: '#223367' }}>
                        ระดับความง่วงนอนเอ็บเวิร์ธ
                    </Typography>
                    <Typography variant="subtitle1" sx={{ opacity: 0.9, color: '#223367' }}>
                        (The Epworth Sleepiness Scale)
                    </Typography>
                    <Divider sx={{ my: 2, backgroundColor: '#48B2F3' }} />
                </>
            }
            formBody={
                <form onSubmit={handleSubmit(onSubmit)}>
                     <Card sx={{ mb: 1, mt: 1, boxShadow: 0 }}>
                        <CardContent>
                            <Box sx={{ bgcolor: '#E9E9E9', pr: '10px', pl:'10px', pt: '6px', pb: '6px', borderRadius: 0 }}>
                                <Typography variant="body2" paragraph mb={0}>
                                    <strong>0 หมายถึง</strong><br/>ไม่มีความเป็นไปได้ที่จะหลับหรือแสดงอาการซึม
                                </Typography>
                            </Box>
                            <Box sx={{ bgcolor: '#F4F4F4', pr: '10px', pl:'10px', pt: '6px', pb: '6px', borderRadius: 0 }}>
                                <Typography variant="body2" paragraph mb={0}>
                                    <strong>1 หมายถึง</strong><br/>มีความเป็นไปได้ที่จะหลับหรือแสดงอาการซึม เล็กน้อย (น้อยกว่า 50%)
                                </Typography>
                            </Box>
                            <Box sx={{ bgcolor: '#E9E9E9', pr: '10px', pl:'10px', pt: '6px', pb: '6px', borderRadius: 0 }}>
                                <Typography variant="body2" paragraph mb={0}>
                                    <strong>2 หมายถึง</strong><br/>มีความเป็นไปได้ที่จะหลับหรือแสดงอาการซึม ปานกลาง
                                </Typography>
                            </Box>
                            <Box sx={{ bgcolor: '#F4F4F4', pr: '10px', pl:'10px', pt: '6px', pb: '6px', borderRadius: 0 }}>
                                <Typography variant="body2" mb={0}>
                                    <strong>3 หมายถึง</strong><br/>มีความเป็นไปได้ที่จะหลับหรือแสดงอาการซึม สูง (มากกว่า 50%)
                                </Typography>
                            </Box>
                        </CardContent>
                    </Card>
                    <Card sx={{ mb: 1, boxShadow: 0 }}>
                        <CardContent>
                            <Typography>
                                ให้คะแนนความมีโอกาสจะงีบหลับ ในสถานการณ์ต่อไปนี้
                            </Typography>
                        </CardContent>
                    </Card>
                    {EPWORTH_QUESTIONS?.assessments.map((assessment, i) => (
                        // <Card key={assessment.id} sx={{ mb: 2, border: errors[`${assessment.name}` as keyof EpworthAssessmentFormData] ? '2px solid #d32f2f' : 'none' }}>
                        //     <CardContent>
                        //         <Typography variant="body1" sx={{ mb: 3, fontWeight: 500 }}>
                        //             {assessment.question}
                        //         </Typography>

                        //         <Controller
                        //             name={`${assessment.name}` as keyof EpworthAssessmentFormData}
                        //             control={control}
                        //             defaultValue=""
                        //             render={({ field }) => (
                        //             <RadioGroup {...field}>
                        //                 {data.options.map((option) => (
                        //                 <FormControlLabel
                        //                     key={option.value}
                        //                     value={option.value}
                        //                     control={<Radio />}
                        //                     label={option.label}
                        //                     sx={{
                        //                     mb: 1,
                        //                     '& .MuiFormControlLabel-label': {
                        //                         fontSize: '0.95rem'
                        //                     }
                        //                     }}
                        //                 />
                        //                 ))}
                        //             </RadioGroup>
                        //             )}
                        //         />

                        //         {errors[`${assessment.name}` as keyof EpworthAssessmentFormData] &&
                        //             <Typography color="error" variant="caption" sx={{ mt: 1, display: 'block' }}>
                        //                 {errors[`${assessment.name}` as keyof EpworthAssessmentFormData]?.message}
                        //             </Typography>
                        //         }
                        //     </CardContent>
                        // </Card>
                        <QuestionCard
                            key={`epworth-question-${i}`}
                            title={assessment.question}
                            name={assessment.name as keyof EpworthAssessmentFormData}
                        />
                    ))}

                    <Card sx={{ mb: 1, boxShadow: 0 }}>
                        <CardContent>
                            <Button
                                type="submit"
                                variant="contained"
                                fullWidth
                                size="large"
                                sx={{
                                mt: 3,
                                py: 2,
                                backgroundColor: '#223367   ',
                                '&:hover': {
                                    backgroundColor: '#333'
                                },
                                fontSize: '1.1rem',
                                fontWeight: 'bold'
                                }}
                            >
                                ถัดไป
                            </Button>
                        </CardContent>
                    </Card>
                </form>
            }
        />
        
    );
}