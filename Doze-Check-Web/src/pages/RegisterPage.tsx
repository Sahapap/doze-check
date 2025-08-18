import React from 'react';
import {
    Box,
    TextField,
    Button,
    Typography,
    Container,
    Card,
    CardContent,
    useTheme,
    useMediaQuery,
    Select,
    MenuItem,
    FormControl,
    InputLabel,
    Divider
} from '@mui/material';
import { useForm, Controller } from 'react-hook-form';
import BackgroundImg from '../assets/background.jpg'
import Logo from '../assets/logo.png'
import data from '../data/hourSleepPerDay.json'
import { useNavigate } from 'react-router-dom'

interface FormData {
    firstName: string;
    lastName: string;
    hourSleepPerDay: string;
    phoneNumber: string;
}

const RegisterPage: React.FC = () => {
    const navigate = useNavigate()
    const { control, handleSubmit, formState: { errors } } = useForm<FormData>({
        defaultValues: {
        firstName: '',
        lastName: '',
        hourSleepPerDay: '',
        phoneNumber: ''
        }
    });
    const theme = useTheme();
    const isMobile = useMediaQuery(theme.breakpoints.down('sm'));

    const onSubmit = (data: FormData) => {
        // Handle form submission here
        navigate('/stop-bang-assessment', {
            state: data
        })
    };

    return (
        <Box
            sx={{
                height: "100vh", // full height
                width: "100vw",
                backgroundColor: "white", // fill empty space with white
                backgroundImage: `url(${BackgroundImg})`,
                backgroundRepeat: "no-repeat",
                backgroundPosition: "center",
                backgroundSize: "contain", // ensures no cropping
                overflow: 'hidden',
                aspectRatio: '16/9',
                '@media (max-width:344px)': {
                    width: '-webkit-fill-available'
                },
            }}
        >
            <Container maxWidth="sm" sx={{ py: 2, pt: '2%', width: '350px' }}>
                <Card sx={{ background: '#FFFF', borderRadius: '20px' }}>
                    <form onSubmit={handleSubmit(onSubmit)}>
                        <Card sx={{ mb: 0, mt: 1, boxShadow: 0 }}>
                            <CardContent>
                                <Typography variant="h5" fontWeight="medium" sx={{ mb: 1, textAlign: 'center' }}>
                                    ข้อมูลส่วนบุคคล
                                </Typography>
                            </CardContent>
                        </Card>
                        <Card sx={{ mb: 0, boxShadow: 0 }}>
                            <CardContent style={{ paddingBottom: 0}}>
                                <Box sx={{ display: 'flex', flexDirection: isMobile ? 'column' : 'row', }}>
                                    <Controller
                                        name='firstName'
                                        control={control}
                                        rules={{ required: 'กรุณากรอกชื่อ' }}
                                        render={({ field }) => (
                                            <TextField
                                                {...field}
                                                fullWidth
                                                label="ชื่อ"
                                                variant="outlined"
                                                error={!!errors.firstName}
                                                helperText={errors.firstName?.message}
                                                sx={{ mb: 2 }}
                                            />
                                        )}
                                    />
                                </Box>
                            </CardContent>
                        </Card>
                        <Card sx={{ mb: 0, boxShadow: 0 }}>
                            <CardContent style={{ paddingBottom: 0}}>
                                <Box sx={{ display: 'flex', flexDirection: isMobile ? 'column' : 'row', }}>
                                    <Controller
                                        name='lastName'
                                        control={control}
                                        rules={{ required: 'กรุณากรอกนามสกุล' }}
                                        render={({ field }) => (
                                            <TextField
                                                {...field}
                                                fullWidth
                                                label="นามสกุล"
                                                variant="outlined"
                                                error={!!errors.lastName}
                                                helperText={errors.lastName?.message}
                                                sx={{ mb: 2 }}
                                            />
                                        )}
                                    />
                                </Box>
                            </CardContent>
                        </Card>
                        <Card sx={{ mb: 0, boxShadow: 0 }}>
                            <CardContent style={{ paddingBottom: 0}}>
                                <Box sx={{ display: 'flex', flexDirection: isMobile ? 'column' : 'row', }}>
                                    <Controller
                                        name="phoneNumber"
                                        control={control}
                                        rules={{
                                        required: 'กรุณากรอกเบอร์โทรศัพท์',
                                        pattern: {
                                            value: /^[0-9]{10}$/,
                                            message: 'กรุณากรอกเบอร์โทรศัพท์ 10 หลัก'
                                        }
                                        }}
                                        render={({ field }) => (
                                        <TextField
                                            {...field}
                                            fullWidth
                                            label="เบอร์โทรศัพท์มือถือ"
                                            variant="outlined"
                                            error={!!errors.phoneNumber}
                                            helperText={errors.phoneNumber?.message}
                                        />
                                        )}
                                    />
                                </Box>
                            </CardContent>
                        </Card>
                        <Card sx={{ mb: 0, boxShadow: 0 }}>
                            <CardContent style={{ paddingBottom: 0}}>
                                <Box sx={{ display: 'flex', flexDirection: isMobile ? 'column' : 'row', }}>
                                    <Controller
                                        name='hourSleepPerDay'
                                        control={control}
                                        rules={{
                                        required: 'กรุณาเลือก',

                                        }}
                                        render={({ field }) => (
                                            <FormControl fullWidth>
                                                <InputLabel>จำนวนชั่วโมงที่นอนต่อวัน</InputLabel>
                                                <Select
                                                    {...field}
                                                    fullWidth
                                                    label='จำนวนชั่วโมงที่นอนต่อวัน'
                                                    variant='outlined'
                                                    error={!!errors.hourSleepPerDay}
                                                    // helperText={errors.sleepHour?.message}
                                                >
                                                    {data.map((m, i) => {
                                                        return(
                                                            <MenuItem key={`hour-sleep-option-${i}`} value={m.value}>{m.label}</MenuItem>
                                                        )
                                                    })}
                                                </Select>
                                            </FormControl>
                                        )}
                                    />
                                </Box>
                                <Divider sx={{ my: 2, backgroundColor: '#473BF0' }} />
                            </CardContent>
                        </Card>
                        <Card sx={{ mb: 0, boxShadow: 0 }}>
                            <CardContent>
                                <Button
                                    type="submit"
                                    variant="contained"
                                    size="large"
                                    fullWidth
                                    sx={{
                                        background: 'linear-gradient(45deg, #667eea 30%, #764ba2 90%)',
                                        py: 1.5,
                                        borderRadius: 2,
                                        fontWeight: 'bold',
                                        fontSize: '1.1rem',
                                        '&:hover': {
                                        background: 'linear-gradient(45deg, #5a6fd8 30%, #6a4190 90%)',
                                        }
                                    }}
                                >
                                    เริ่มประเมิน
                                </Button>
                            </CardContent>
                        </Card>
                    </form>
                </Card>
                <div style={{ textAlign: 'center', marginTop: '5%'}}>
                    <img
                        src={Logo}
                        width={'20%'}
                        style={{ borderRadius: '60%', backgroundColor: '#FFFF', border: '5px solid #FFD000'}}
                    />
                </div>
            </Container>
        </Box>
    );
};

export default RegisterPage;