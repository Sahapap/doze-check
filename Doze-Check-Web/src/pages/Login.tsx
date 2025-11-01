import { Box, Button, Container, Paper, TextField, Typography } from "@mui/material";
import { useState } from "react";
import { useForm } from "react-hook-form";
import axiosInstance from "../api/axiosInstance";
import { useNavigate } from "react-router-dom";

type LoginFormValues = {
    username: string;
    password: string;
};


export default function Login(){
    const navigate = useNavigate()

    const { handleSubmit, register } = useForm<LoginFormValues>();
    const [isLoading, setIsLoading] = useState<boolean>(false);

    const submitLogin = async (data: LoginFormValues) => {


        setIsLoading(true)
        try{
            const res = await axiosInstance('/auth/login', { method: 'POST', data: data})
            if(res.status !== 200) throw "ไม่สามารถ Log in ได้ กรุณาติดต่อผู้ดูแล"

            localStorage.setItem("accessToken", res.data.accessToken)
            localStorage.setItem("refreshToken", res.data.refreshToken)

            navigate('/report')
        }catch(e){
            console.error(e)
            alert("ไม่สามารถ Log in ได้ กรุณาติดต่อผู้ดูแล")
        }finally{
            setIsLoading(false)
        }
    }

    return(
        <Box
            sx={{
                minHeight: '100vh',
                backgroundColor: '#e8e8e8',
                display: 'flex',
                alignItems: 'center',
                justifyContent: 'center',
            }}
        >
            <Container maxWidth="sm">
                <Paper
                    elevation={0}
                    sx={{
                        backgroundColor: 'transparent',
                        textAlign: 'center',
                    }}
                >
                    <Box
                        component="form"
                        onSubmit={handleSubmit(submitLogin)}
                        sx={{
                            display: 'flex',
                            flexDirection: 'column',
                            gap: 3,
                            maxWidth: 350,
                            mx: 'auto',
                        }}
                    >
                        <Box>
                            <Typography
                                variant="body1"
                                sx={{
                                    textAlign: 'left',
                                    mb: 1,
                                    color: '#666',
                                    fontWeight: 500,
                                }}
                            >
                                Username
                            </Typography>
                            <TextField
                                fullWidth
                                placeholder="enter your username here..."
                                {...register('username', { required: 'username is required' })}
                                variant="outlined"
                                sx={{
                                    '& .MuiOutlinedInput-root': {
                                        backgroundColor: 'white',
                                        '& fieldset': {
                                            borderColor: '#ccc',
                                            borderWidth: 2,
                                        },
                                        '&:hover fieldset': {
                                            borderColor: '#999',
                                        },
                                        '&.Mui-focused fieldset': {
                                            borderColor: '#666',
                                        },
                                    },
                                }}
                            />
                        </Box>
                        <Box>
                            <Typography
                                variant="body1"
                                sx={{
                                    textAlign: 'left',
                                    mb: 1,
                                    color: '#666',
                                    fontWeight: 500,
                                }}
                            >
                                Password
                            </Typography>
                            <TextField
                                fullWidth
                                type="password"
                                placeholder="enter your password here..."
                                {...register('password', { required: 'Password is required' })}
                                variant="outlined"
                                sx={{
                                    '& .MuiOutlinedInput-root': {
                                        backgroundColor: 'white',
                                        '& fieldset': {
                                            borderColor: '#ccc',
                                            borderWidth: 2,
                                        },
                                        '&:hover fieldset': {
                                            borderColor: '#999',
                                        },
                                        '&.Mui-focused fieldset': {
                                            borderColor: '#666',
                                        },
                                    },
                                }}
                            />
                        </Box>

                        <Button
                            type="submit"
                            fullWidth
                            variant="contained"
                            sx={{
                                backgroundColor: '#888',
                                color: 'white',
                                fontSize: '1.1rem',
                                fontWeight: 'bold',
                                py: 1.5,
                                mt: 2,
                                textTransform: 'uppercase',
                                '&:hover': {
                                    backgroundColor: '#666',
                                },
                                borderRadius: 1,
                            }}
                            disabled={isLoading}
                        >
                            LOGIN
                        </Button>
                    </Box>
                </Paper>
            </Container>
        </Box>
    )
}