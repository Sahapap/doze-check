import React from 'react';
import {
  Box,
  TextField,
  Button,
  Typography,
  Stack
} from '@mui/material';
import { useForm, Controller } from 'react-hook-form';

interface FormData {
  name: string;
  lastGrade: string;
  age: string;
  phoneNumber: string;
}

const RegisterPage: React.FC = () => {
  const { control, handleSubmit, formState: { errors } } = useForm<FormData>({
    defaultValues: {
      name: '',
      lastGrade: '',
      age: '',
      phoneNumber: ''
    }
  });

    const onSubmit = (data: FormData) => {
        console.log('Form data:', data);
        // Handle form submission here
    };

    return (
            <form onSubmit={handleSubmit(onSubmit)}>
              <Stack spacing={3}>
                <Box>
                  <Typography variant="subtitle1" fontWeight="medium" sx={{ mb: 1 }}>
                    ลงทะเบียน
                  </Typography>
                  <Controller
                    name="name"
                    control={control}
                    rules={{ required: 'กรุณากรอกชื่อ' }}
                    render={({ field }) => (
                      <TextField
                        {...field}
                        fullWidth
                        label="ชื่อ"
                        variant="outlined"
                        error={!!errors.name}
                        helperText={errors.name?.message}
                        sx={{ mb: 2 }}
                      />
                    )}
                  />

                  <Controller
                    name="lastGrade"
                    control={control}
                    rules={{ required: 'กรุณากรอกนามสกุล' }}
                    render={({ field }) => (
                      <TextField
                        {...field}
                        fullWidth
                        label="นามสกุล"
                        variant="outlined"
                        error={!!errors.lastGrade}
                        helperText={errors.lastGrade?.message}
                        sx={{ mb: 2 }}
                      />
                    )}
                  />

                  <Controller
                    name="age"
                    control={control}
                    rules={{ 
                      required: 'กรุณากรอกอายุ',
                      pattern: {
                        value: /^[0-9]+$/,
                        message: 'กรุณากรอกตัวเลขเท่านั้น'
                      }
                    }}
                    render={({ field }) => (
                      <TextField
                        {...field}
                        fullWidth
                        label="อายุ"
                        variant="outlined"
                        type="number"
                        error={!!errors.age}
                        helperText={errors.age?.message}
                        sx={{ mb: 2 }}
                      />
                    )}
                  />

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
              </Stack>
            </form>
    );
};

export default RegisterPage;