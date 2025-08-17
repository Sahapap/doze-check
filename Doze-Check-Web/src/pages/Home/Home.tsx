import { Box, Typography } from '@mui/material'
import BackgroundImg from '../../assets/background.jpg'
import Logo from '../../assets/logo.png'
import './style.css'

function Home(){
    return(
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
            <div
                className='image-div'
            >
                <img
                    src={Logo}
                />
            </div>
            <div style={{ width: '100%', paddingTop: '15px' }}>
                <div className='message-div'>
                    <Typography color='white' fontSize={'26px'} textAlign={'center'}>
                    แบบประเมินความเสี่ยงจากโรคหยุดหายใจขณะหลับจากการอุดกั้น
                </Typography>
                </div>
            </div>
        </Box>
    )
}

export default Home