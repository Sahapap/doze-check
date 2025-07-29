import {
    Box,
    FormControl,
    FormControlLabel,
    Button,
    useTheme,
    useMediaQuery,
    Card,
    CardContent,
    Typography,
    RadioGroup,
    Radio,
    FormHelperText,
    TextField,
    Chip,
} from '@mui/material';
import { useForm, Controller } from 'react-hook-form';
import { yupResolver } from '@hookform/resolvers/yup';
import * as yup from 'yup';
import data from '../data/stopBang.json'

// Validation schema
const schema = yup.object({
    weight: yup.number().positive('กรุณาใส่น้ำหนักที่ถูกต้อง').required('กรุณาใส่น้ำหนัก'),
    height: yup.number().positive('กรุณาใส่ส่วนสูงที่ถูกต้อง').required('กรุณาใส่ส่วนสูง'),
    neckCircumference: yup.number().positive('กรุณาใส่เส้นรอบวงคอที่ถูกต้อง').required('กรุณาใส่เส้นรอบวงคอ'),
    snoring: yup.string().required('กรุณาตอบคำถาม'),
    tired: yup.string().required('กรุณาตอบคำถาม'),
    observed: yup.string().required('กรุณาตอบคำถาม'),
    bloodPressure: yup.string().required('กรุณาตอบคำถาม'),
    age: yup.string().required('กรุณาตอบคำถาม'),
    gender: yup.string().required('กรุณาตอบคำถาม')
});

interface IStopBangFormData {
    weight: number;
    height: number;
    neckCircumference: number;
    snoring: string;
    tired: string;
    observed: string;
    bloodPressure: string;
    age: string;
    gender: string;
}


export default function StopBangAssessment(){
    const theme = useTheme();
    const isMobile = useMediaQuery(theme.breakpoints.down('sm'));

    const { control, handleSubmit, watch, formState: { errors } } = useForm<IStopBangFormData>({
        resolver: yupResolver(schema),
        defaultValues: {
            weight: undefined,
            height: undefined,
            neckCircumference: undefined,
            snoring: '',
            tired: '',
            observed: '',
            bloodPressure: '',
            age: '',
            gender: ''
        }
    });

    const weight = watch('weight');
    const height = watch('height');

    // Calculate BMI
    const calculateBMI = (weight: number, height: number): number => {
        if (!weight || !height) return 0;
        const heightInM = height / 100;
        return Math.round((weight / (heightInM * heightInM)) * 10) / 10;
    };

    const bmi = calculateBMI(weight, height);

    const onSubmit = (data: IStopBangFormData) => {
        console.log('Form submitted:', data);
    };

    const QuestionCard: React.FC<{
        title: string;
        description: string;
        name: keyof IStopBangFormData;
        color?: string;
    }> = ({ title, description, name, color = '#6366f1' }) => (
        <Card sx={{ mb: 2, boxShadow: 2 }}>
        <CardContent>
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
                    gap: isMobile ? 1 : 2
                    }}
                >
                    <FormControlLabel
                    value="ใช่"
                    control={<Radio sx={{ color: color }} />}
                    label="ใช่"
                    sx={{
                        backgroundColor: field.value === 'ใช่' ? `${color}15` : 'transparent',
                        borderRadius: 1,
                        px: 2,
                        py: 0.5,
                        margin: 0,
                        border: field.value === 'ใช่' ? `2px solid ${color}` : '2px solid transparent'
                    }}
                    />
                    <FormControlLabel
                    value="ไม่ใช่"
                    control={<Radio sx={{ color: color }} />}
                    label="ไม่ใช่"
                    sx={{
                        backgroundColor: field.value === 'ไม่ใช่' ? `${color}15` : 'transparent',
                        borderRadius: 1,
                        px: 2,
                        py: 0.5,
                        margin: 0,
                        border: field.value === 'ไม่ใช่' ? `2px solid ${color}` : '2px solid transparent'
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
        </Card>
    );


    return(
        <form onSubmit={handleSubmit(onSubmit)}>
            {/* Weight and Height */}
            <Card sx={{ mb: 2, boxShadow: 2 }}>
                <CardContent>
                <Box sx={{ display: 'flex', flexDirection: isMobile ? 'column' : 'row', gap: 2, mb: 2 }}>
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
                {bmi > 0 && (
                    <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
                    <Chip
                        label={`BMI: ${bmi}`}
                        color={bmi >= 25 ? 'error' : bmi >= 23 ? 'warning' : 'success'}
                        // size="large"
                        sx={{ fontWeight: 'bold', fontSize: '1.1rem' }}
                    />
                    </Box>
                )}
                </CardContent>
            </Card>

            {/* Neck Circumference */}
            <Card sx={{ mb: 2, boxShadow: 2 }}>
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
                </CardContent>
            </Card>

            {/* Questions */}
            <QuestionCard
                title="Snoring"
                description="คุณกรนเสียงดังระดับที่ (ดังกว่าเสียงพูด หรือดังพอที่จะได้ยินผ่านประตูปิด)หรือไม่?"
                name="snoring"
            />

            {data.assessments.map((m) => {
                return(
                     <QuestionCard
                        key={m.id}
                        title={m.name}
                        description={m.question}
                        name={m.name as keyof IStopBangFormData}
                    />
                )
            })}

            <Button
                type="submit"
                variant="contained"
                fullWidth
                size="large"
                sx={{
                mt: 3,
                py: 2,
                backgroundColor: '#000',
                '&:hover': {
                    backgroundColor: '#333'
                },
                fontSize: '1.1rem',
                fontWeight: 'bold'
                }}
            >
                ตัดสิน
            </Button>
        </form>
    )
}