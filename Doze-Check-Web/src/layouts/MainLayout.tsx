import { Box, Card, CardContent, Typography } from "@mui/material";
import { Outlet } from "react-router-dom";
import { DirectionsBus } from '@mui/icons-material';

export default function MainLayout(){
    return(
         <Box
          sx={{
            minHeight: '98vh',
            height: '100%',
            background: 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
          }}
        >
		 <Card
          elevation={8}
          sx={{
            maxWidth: 415,
            width: '100%',
            borderRadius: 3,
            overflow: 'hidden',
            margin: '5px'
          }}
        >
			<CardContent sx={{ p: 4 }}>
				{/* Header */}
				<Box sx={{ textAlign: 'center', mb: 4 }}>
                    <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'center', mb: 2 }}>
                        <DirectionsBus sx={{ fontSize: 32, color: '#667eea', mr: 1 }} />
                        <Typography variant="h5" component="h1" fontWeight="bold">
                            ประเมินความเสี่ยงการนอนหลับ
                        </Typography>
                    </Box>
                    <Typography variant="body2" color="text.secondary">
                        สำหรับคนขับรถ บขส.
                    </Typography>
				</Box>
                <Outlet/>
			</CardContent>
        </Card>
      </Box>
    )
}