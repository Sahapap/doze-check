import {
    Box,
    Card,
    CardContent,
    Typography,
    RadioGroup,
    FormControlLabel,
    Radio,
    Button
} from '@mui/material';
import { useForm, Controller } from 'react-hook-form';
import * as yup from 'yup';
import { yupResolver } from '@hookform/resolvers/yup';
import { useFetchData } from '../customHooks/useFetchData';

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

interface IEpworthAssessment {
    topic: string
    description: string
    assessments: {
        id: string
        name: "situation1" | "situation2" | "situation3" | "situation4" | "situation5" | "situation6" | "situation7" | "situation8"
        question: string
    }[]
    options: {
        label: string
        value: number
    }[]
}

export default function EpworthAssessment() {

    const {
        control,
        handleSubmit,
        formState: { errors, isValid },
    } = useForm<EpworthAssessmentFormData>({
        resolver: yupResolver(schema),
        mode: 'onChange'
    });

    const { data: epworthAssessment, loading, error } = useFetchData<IEpworthAssessment>('/epworth', { method: 'GET' })

    const onSubmit = (data: EpworthAssessmentFormData) => {
        console.log('data', data)
    };


    return (
        loading ?
        <>Loading</> :
        error ?
        <p>{error}</p> :
        <form onSubmit={handleSubmit(onSubmit)}>
            {epworthAssessment?.assessments.map((assessment) => (
                <Card key={assessment.id} sx={{ mb: 2, border: errors[`${assessment.name}` as keyof EpworthAssessmentFormData] ? '2px solid #d32f2f' : 'none' }}>
                    <CardContent>
                        <Typography variant="body1" sx={{ mb: 3, fontWeight: 500 }}>
                            {assessment.question}
                        </Typography>

                        <Controller
                            name={`${assessment.name}` as keyof EpworthAssessmentFormData}
                            control={control}
                            defaultValue=""
                            render={({ field }) => (
                            <RadioGroup {...field}>
                                {epworthAssessment.options.map((option) => (
                                <FormControlLabel
                                    key={option.value}
                                    value={option.value}
                                    control={<Radio />}
                                    label={option.label}
                                    sx={{
                                    mb: 1,
                                    '& .MuiFormControlLabel-label': {
                                        fontSize: '0.95rem'
                                    }
                                    }}
                                />
                                ))}
                            </RadioGroup>
                            )}
                        />

                        {errors[`${assessment.name}` as keyof EpworthAssessmentFormData] &&
                            <Typography color="error" variant="caption" sx={{ mt: 1, display: 'block' }}>
                                {errors[`${assessment.name}` as keyof EpworthAssessmentFormData]?.message}
                            </Typography>
                        }
                    </CardContent>
                </Card>
            ))}

            <Box sx={{ mt: 3, textAlign: 'center' }}>
            <Button
                type="submit"
                variant="contained"
                size="large"
                disabled={!isValid}
                sx={{
                py: 1.5,
                px: 4,
                fontSize: '1.1rem',
                background: 'linear-gradient(45deg, #667eea 30%, #764ba2 90%)',
                '&:hover': {
                    background: 'linear-gradient(45deg, #5a6fd8 30%, #6a4190 90%)',
                }
                }}
            >
                ประเมินผล
            </Button>
            </Box>
        </form>
    );
}