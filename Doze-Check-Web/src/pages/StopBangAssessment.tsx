import {
    Box,
    FormControl,
    FormControlLabel,
    Checkbox,
    Button,
} from '@mui/material';
import { useForm, Controller } from 'react-hook-form';
import { useFetchData } from '../customHooks/useFetchData';


interface IStopBangFormData {
    snoring: boolean;
    tired: boolean;
    observed: boolean;
    pressure: boolean;
    bmi: boolean;
    age: boolean;
    neck: boolean;
    gender: boolean;
}

interface IStopBangAssessment {
    topic: string
    description: string
    assessments: {
        id: string
        name: "snoring" | "tired" | "observed" | "pressure" | "bmi" | "age" | "neck" | "gender"
        question: string
    }[]
}

export default function StopBangAssessment(){
    const { control, handleSubmit, watch } = useForm<IStopBangFormData>({
    defaultValues: {
        snoring: false,
        tired: false,
        observed: false,
        pressure: false,
        bmi: false,
        age: false,
        neck: false,
        gender: false
        }
    });

    const { data, loading, error } = useFetchData<IStopBangAssessment>('/stop-bang', { method: 'GET' })

    const watchedValues = watch();
    const score = Object.values(watchedValues).filter(Boolean).length;

    const onSubmit = (data: IStopBangFormData) => {
        console.log('Form submitted:', data);
        console.log('STOP-Bang Score:', score);
    };

    return( loading ?
        <>loading</> :
        error ?
        <p>{error}</p> :
        <form onSubmit={handleSubmit(onSubmit)}>
            <Box sx={{ display: 'flex', flexDirection: 'column', gap: 2 }}>
                {data?.assessments.map(m => {
                    return (
                        <Controller
                            key={m.id}
                            name={m.name}
                            control={control}
                            render={({ field }) => (
                                <FormControl>
                                <FormControlLabel
                                    control={<Checkbox {...field} checked={field.value} />}
                                    label={m.question}
                                />
                                </FormControl>
                            )}
                        />
                    )
                })}

                <Button
                    type="submit"
                    variant="contained"
                    size="large"
                    sx={{
                        mt: 3,
                        background: 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
                        py: 1.5
                    }}
                >
                    ส่งผลการประเมิน
                </Button>
            </Box>
        </form>
    )
}