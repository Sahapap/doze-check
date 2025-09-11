import { Box, Button, Typography, useMediaQuery, useTheme } from '@mui/material'
import BackgroundImg from '../../assets/background-image.jpg'
import Logo from '../../assets/logo.png'
import './style.css'
import { useNavigate } from 'react-router-dom'

function Home(){
    const navigate = useNavigate()
    const theme = useTheme();
    const isMobile = useMediaQuery(theme.breakpoints.down('sm'));
    return(
        <Box
            sx={{
                height: "100vh", // full height
                width: "100vw",
                backgroundColor: "white", // fill empty space with white
                backgroundImage: `url(${BackgroundImg})`,
                backgroundRepeat: "no-repeat",
                backgroundPosition: "center",
                backgroundSize: isMobile ? "cover" : "contain", // ensures no cropping
                overflow: 'hidden',
                aspectRatio: '16/9',
                '@media (max-width:344px)': {
                    width: '-webkit-fill-available'
                },
            }}
        >
            <div
                className='image-div'
            >
                <img
                    src={Logo}
                />
            </div>
            <div style={{ width: '100%', paddingTop: '15px' }}>
                <div className='message-div'>
                    <Typography color='white' fontSize={isMobile ? '23px' : '26px'} textAlign={'center'}>
                        แบบประเมินความเสี่ยง
                    </Typography>
                    <Typography color='white' fontSize={isMobile ? '23px' : '26px'} textAlign={'center'}>
                        จากโรคหยุดหายใจ
                    </Typography>
                    <Typography color='white' fontSize={isMobile ? '23px' : '26px'} textAlign={'center'}>
                        ขณะหลับจากการอุดกั้น
                    </Typography>
                </div>
            </div>
            <div style={{ textAlign: 'center', paddingTop: '2%'}}>
                <Button
                    variant='contained'
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
                    onClick={() => navigate('/register')}
                >
                    เริ่มทำแบบสอบถาม
                </Button>
            </div>
        </Box>
    )
}

export default Home