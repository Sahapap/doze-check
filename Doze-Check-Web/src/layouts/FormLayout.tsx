import { Card, CardContent, Container } from "@mui/material"


export default function FormLayout({
    backgroundColor,
    header,
    formBody
}: {
    backgroundColor: string
    header: React.ReactNode
    formBody: React.ReactNode
}){
    return(
        <div style={{ background: backgroundColor, minHeight: '100vh' }}>
            <Container maxWidth="sm" sx={{ py: 2, backgroundColor: backgroundColor }}>
                <Card sx={{ background: 'white', mb: 3, borderRadius: '20px' }}>
                    <CardContent sx={{ textAlign: 'center', color: 'white' }}>
                        {/* Header */}
                        {header}
                    </CardContent>
                </Card>
                <Card sx={{ background: 'white', borderRadius: '20px' }}>
                    {/* Form */}
                    {formBody}
                </Card>
            </Container>
        </div>
    )
}