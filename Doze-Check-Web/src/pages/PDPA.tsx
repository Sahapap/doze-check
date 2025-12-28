import { Box, Button, Card, CardContent, Container, DialogActions, Typography } from "@mui/material";
import BackgroundImg from '../assets/background-image.jpg'
import { useNavigate } from "react-router-dom";

export default function PDPA(){
    const navigate = useNavigate()
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
                overflow: 'auto',
                aspectRatio: '16/9',
                '@media (max-width:344px)': {
                    width: '-webkit-fill-available'
                },
            }}
        >
            <Container maxWidth="sm" sx={{ py: 2, pt: '2%', minWidth: '350px', overflowY: 'auto' }}>
                <Card sx={{ background: '#FFFF', borderRadius: '20px', p: 3 }}>
                    <Card sx={{ mb: 0, mt: 1, boxShadow: 0 }}>
                        <CardContent>
                            <Typography variant="h5" fontWeight="medium" sx={{ mb: 1, textAlign: 'center' }}>
                                ประกาศความเป็นส่วนตัว (PDPA) และข้อตกลงการใช้งาน
                            </Typography>
                        </CardContent>
                    </Card>
                    <Card sx={{ mb: 0, boxShadow: 0 }}>
                        <Typography variant="body1" fontWeight="medium" sx={{ mb: 1, textAlign: 'left' }}>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            เว็บไซต์นี้จัดทำขึ้นเพื่อประเมินความเสี่ยงโรคหยุดหายใจขณะหลับจากการอุดกั้น โดยจะมีการเก็บรวบรวมข้อมูลส่วนบุคคลของท่าน เช่น ชื่อ-นามสกุล เบอร์โทรศัพท์ ข้อมูลสุขภาพ และข้อมูลอื่น ๆ ที่เกี่ยวข้อง เพื่อใช้ในการประเมินความเสี่ยงและจัดเก็บสถิติเท่านั้น
                        </Typography>
                        <Typography variant="body1" fontWeight="medium" sx={{ mb: 1, textAlign: 'left' }}>
                            โปรดทราบว่า:
                        </Typography>
                        <Typography variant="body1" fontWeight="medium" sx={{ mb: 1, textAlign: 'left' }}>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            - ข้อมูลของท่านจะถูกเก็บรักษาอย่างปลอดภัย และจะไม่เผยแพร่แก่บุคคลภายนอก ยกเว้นในกรณีที่กฎหมายกำหนด
                        </Typography>
                        <Typography variant="body1" fontWeight="medium" sx={{ mb: 1, textAlign: 'left' }}>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            - การให้ข้อมูลของท่าน เป็นการแสดงความยินยอมให้เราเก็บรวบรวม ใช้ และเปิดเผยข้อมูลส่วนบุคคล ตามพระราชบัญญัติคุ้มครองข้อมูลส่วนบุคคล พ.ศ. 2562 (PDPA)
                        </Typography>
                        <Typography variant="body1" fontWeight="medium" sx={{ mb: 1, textAlign: 'left' }}>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            - ผลการประเมินนี้เป็นการประเมินเบื้องต้นเท่านั้น ไม่ใช่การวินิจฉัยทางการแพทย์ หากท่านมีข้อสงสัยเกี่ยวกับสุขภาพ ขอให้ปรึกษาแพทย์โดยตรง
                        </Typography>
                        <Typography variant="body1" fontWeight="medium" sx={{ mb: 1, textAlign: 'left' }}>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            - ท่านสามารถขอเข้าถึง แก้ไข หรือลบข้อมูลของท่านได้ตลอดเวลา โดยติดต่อผู้ดูแลระบบ
                        </Typography>
                        <Typography variant="body1" fontWeight="medium" sx={{ mb: 1, textAlign: 'left' }}>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            การกด "ยอมรับ" ถือว่าท่านยอมรับและเข้าใจนโยบายนี้ รวมทั้งยินยอมให้ทางเว็บไซต์จัดเก็บ ใช้ และประมวลผลข้อมูลของท่านตามวัตถุประสงค์ที่ระบุ
                        </Typography>
                    </Card>
                    <Card sx={{ mb: 0, boxShadow: 0, textAlign: 'center', alignContent: 'revert' }}>
                        <CardContent>
                            <DialogActions
                                sx={{
                                    flexDirection: { xs: "column", sm: "row" },
                                    alignItems: "stretch",
                                    rowGap: { xs: 1, sm: 0 },   // 👈 vertical space between rows
                                    columnGap: { sm: 2 },      // 👈 horizontal space on desktop
                                }}
                            >
                                <Button
                                    variant="contained"
                                    color="error"
                                    sx={{ order: { xs: 2, sm: 1 }}}
                                    fullWidth
                                    onClick={() => navigate('/')}
                                >
                                    ไม่ยอมรับ
                                </Button>

                                {/* Confirm */}
                                <Button
                                    variant="contained"
                                    color="primary"
                                    sx={{ order: { xs: 1, sm: 2 } }}
                                    fullWidth
                                    onClick={() => navigate('/register', {
                                        state: {
                                            confirmPDPA: true
                                        }
                                    })}
                                >
                                    ยอมรับและเข้าสู่การประเมิน
                                </Button>
                            </DialogActions>
                        </CardContent>
                    </Card>
                </Card>
            </Container>
        </Box>
    )
}