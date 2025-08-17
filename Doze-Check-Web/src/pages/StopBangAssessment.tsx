import {
    Box,
    FormControl,
    Button,
    useTheme,
    useMediaQuery,
    Card,
    CardContent,
    Typography,
    RadioGroup,
    FormHelperText,
    TextField,
    Chip,
    Divider,
} from '@mui/material';
import { useForm, Controller } from 'react-hook-form';
import { yupResolver } from '@hookform/resolvers/yup';
import * as yup from 'yup';
import data from '../data/stopBang.json'
import { useEffect, useMemo } from 'react';
import FormLayout from '../layouts/FormLayout';
import { CustomLabel, CustomRadio } from '../components/CustomeRadioButton';
import { useLocation, useNavigate } from 'react-router-dom';

// Validation schema
const schema = yup.object({
    weight: yup.number().positive('กรุณาใส่น้ำหนักที่ถูกต้อง').required('กรุณาใส่น้ำหนัก'),
    height: yup.number().positive('กรุณาใส่ส่วนสูงที่ถูกต้อง').required('กรุณาใส่ส่วนสูง'),
    neckCircumference: yup.number().positive('กรุณาใส่เส้นรอบวงคอที่ถูกต้อง').required('กรุณาใส่เส้นรอบวงคอ'),
    snoring: yup.string().required('กรุณาตอบคำถาม'),
    tired: yup.string().required('กรุณาตอบคำถาม'),
    observed: yup.string().required('กรุณาตอบคำถาม'),
    pressure: yup.string().required('กรุณาตอบคำถาม'),
    bmi: yup.string().required('กรุณาตอบคำถาม'),
    age: yup.string().required('กรุณาตอบคำถาม'),
    neck: yup.string().required('กรุณาตอบคำถาม'),
    gender: yup.string().required('กรุณาตอบคำถาม')
});

interface IStopBangFormData {
    weight: number;
    height: number;
    neckCircumference: number;
    snoring: string;
    tired: string;
    observed: string
    pressure: string;
    bmi: string
    age: string;
    neck: string
    gender: string;
}

export default function StopBangAssessment(){
    const location = useLocation()
    const navigate = useNavigate()
    const theme = useTheme();
    const isMobile = useMediaQuery(theme.breakpoints.down('sm'));

    const { control, handleSubmit, setValue, watch, formState: { errors } } = useForm<IStopBangFormData>({
        resolver: yupResolver(schema),
        defaultValues: {
            weight: undefined,
            height: undefined,
            neckCircumference: undefined,
            snoring: '',
            tired: '',
            observed: '',
            pressure: '',
            bmi: '',
            neck: '',
            age: '',
            gender: ''
        }
    });

    const weight = watch('weight');
    const height = watch('height');

    useEffect(() => {
        console.log("location state: ", location.state)
        if(!location.state) {
            alert('กรุณากรอกข้อมูล Stop-Bang')
            navigate("/register")
        }
    }, [location.state, navigate])

    // Calculate BMI
    const calculateBMI = (weight: number, height: number): number => {
        if (!weight || !height) return 0;
        const heightInM = height / 100;
        return Math.round((weight / (heightInM * heightInM)) * 10) / 10;
    };

    const bmi = useMemo(() => calculateBMI(weight, height), [weight, height]);

    useEffect(() => {
        if(bmi > 0) setValue('bmi', bmi > 30 ? "1" : "0")
    }, [bmi, setValue])

    const onSubmit = (data: IStopBangFormData) => {
        console.log('Form submitted:', data);
        const stateData = location.state
        navigate('/epworth-assessment', {
            state: {
                ...stateData,
                stopBang: data
            }
        })
    };

    const QuestionCard: React.FC<{
        title: string;
        description: string;
        name: keyof IStopBangFormData;
        color?: string;
    }> = ({ title, description, name, color = '#6366f1' }) => (
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
                <Typography
                variant="body2"
                sx={{
                    mb: 2,
                    color: 'text.secondary',
                    fontSize: isMobile ? '0.875rem' : '1rem'
                }}
                >
                {description}
                </Typography>
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
                                value="1"
                                control={<CustomRadio />}
                                label="ใช่"
                                sx={{
                                    borderTopLeftRadius: '8px',
                                    borderBottomLeftRadius: '8px',
                                    backgroundColor: field.value === '1' ? '#6366f1' : '#f3f4f6',
                                    color: field.value === '1' ? '#ffffff' : '#6b7280',
                                    textAlign: 'center'
                                }}
                            />
                            <CustomLabel
                                value="0"
                                control={<CustomRadio />}
                                label="ไม่ใช่"
                                //   checked={selectedValue === 'ไม่ใช่'}
                                sx={{
                                    borderTopRightRadius: '8px',
                                    borderBottomRightRadius: '8px',
                                    backgroundColor: field.value === '0' ? '#6366f1' : '#f3f4f6',
                                    color: field.value === '0' ? '#ffffff' : '#6b7280',
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


    return(
        <FormLayout
            backgroundColor='#FFBD7D'
            header={
                <>
                    <Typography variant="h5" sx={{ fontWeight: 'bold', mb: 1, color: '#223367' }}>
                        แบบประเมิน
                    </Typography>
                    <Typography variant="h6" sx={{ mb: 2, color: '#223367' }}>
                        ภาวะหยุดหายใจขณะหลับ
                    </Typography>
                    <Typography variant="subtitle1" sx={{ opacity: 0.9, color: '#223367' }}>
                        (STOP-BANG)
                    </Typography>
                    <Divider sx={{ my: 2, backgroundColor: '#FDBC7D' }} />
                </>
            }
            formBody={
                <form onSubmit={handleSubmit(onSubmit)}>
                    <Card sx={{ mb: 1, mt: 1, boxShadow: 0 }}>
                        <CardContent>
                            <Typography>
                                โปรดตอบคำถามต่อไปนี้
                            </Typography>
                        </CardContent>
                    </Card>
                    {/* Weight and Height */}
                    <Card sx={{ mb: 1, boxShadow: 0 }}>
                        <CardContent>
                            <Box sx={{ display: 'flex', flexDirection: isMobile ? 'column' : 'row',}}>
                                <Controller
                                    name="weight"
                                    control={control}
                                    render={({ field }) => (
                                        <TextField
                                            {...field}
                                            label="น้ำหนัก"
                                            type="number"
                                            fullWidth
                                            InputProps={{ endAdornment: 'กก' }}
                                            error={!!errors.weight}
                                            helperText={errors.weight?.message}
                                            onChange={(e) => field.onChange(parseFloat(e.target.value))}
                                        />
                                    )}
                                />
                            </Box>
                        </CardContent>
                    </Card>

                    <Card sx={{ mb: 1, boxShadow: 0 }}>
                        <CardContent>
                            <Box sx={{ display: 'flex', flexDirection: isMobile ? 'column' : 'row', }}>
                                <Controller
                                    name="height"
                                    control={control}
                                    render={({ field }) => (
                                        <TextField
                                        {...field}
                                        label="ส่วนสูง"
                                        type="number"
                                        fullWidth
                                        InputProps={{ endAdornment: 'ซม' }}
                                        error={!!errors.height}
                                        helperText={errors.height?.message}
                                        onChange={(e) => field.onChange(parseFloat(e.target.value))}
                                        />
                                    )}
                                />
                            </Box>
                        </CardContent>
                    </Card>

                    {bmi > 0 && (
                        <Card sx={{ mb: 0, boxShadow: 0 }}>
                            <CardContent>
                                <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
                                            <Chip
                                            label={`BMI: ${bmi}`}
                                            color={bmi >= 25 ? 'error' : bmi >= 23 ? 'warning' : 'success'}
                                            // size="large"
                                            sx={{ fontWeight: 'bold', fontSize: '1.1rem' }}
                                        />
                                    </Box>
                            </CardContent>
                        </Card>
                    )}

                    {/* Neck Circumference */}
                    <Card sx={{ mb: 1, boxShadow: 0 }}>
                        <CardContent>
                            <Controller
                                name="neckCircumference"
                                control={control}
                                render={({ field }) => (
                                <TextField
                                    {...field}
                                    label="เส้นรอบวงคอ"
                                    type="number"
                                    fullWidth
                                    InputProps={{ endAdornment: 'ซม' }}
                                    error={!!errors.neckCircumference}
                                    helperText={errors.neckCircumference?.message || 'วัดเส้นรอบวงคอระดับลูกอาดัม'}
                                    onChange={(e) => field.onChange(parseFloat(e.target.value))}
                                />
                                )}
                            />
                            <Divider sx={{ my: 2, backgroundColor: '#473BF0' }} />
                        </CardContent>
                    </Card>

                    {/* Questions */}
                    {data.assessments.map((m) => {
                        return(
                            <QuestionCard
                                key={m.id}
                                title={m.label}
                                description={m.question}
                                name={m.name as keyof IStopBangFormData}
                            />
                        )
                    })}
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
    )
}