import { yupResolver } from '@hookform/resolvers/yup';
import { Controller, useForm } from 'react-hook-form';
import * as yup from 'yup';
import FormLayout from '../layouts/FormLayout';
import { Button, Card, CardContent, Divider, FormControl, FormHelperText, Radio, RadioGroup, Typography } from '@mui/material';
import { CustomLabel } from '../components/CustomeRadioButton';

const schema = yup.object({
    isHasAccidentHistory: yup.string().required('กรุณาตอบคำถาม')
});

type AccidentHistoryAccessmentFormData = {
    isHasAccidentHistory: string
}

export default function AccidentHistoryAssessment(){
    const { control, handleSubmit, formState: {errors} } = useForm<AccidentHistoryAccessmentFormData>({
        mode: 'onChange',
        resolver: yupResolver(schema)
    })

    const onSubmit = (data: AccidentHistoryAccessmentFormData) => {
        console.log('data = ', data)
    }
    return(
        <FormLayout
            backgroundColor='#FF9376'
            header={
                <>
                    <Typography variant="h5" sx={{ fontWeight: 'bold', mb: 1, color: '#223367' }}>
                        ประวัติเคยเกิดอุบัติเหตุจากความง่วงนอนขณะขับรถ
                    </Typography>
                    <Divider sx={{ my: 2, backgroundColor: '#FF9376' }} />
                </>
            }
            formBody={
                <form onSubmit={handleSubmit(onSubmit)}>
                    <Card sx={{ mb: 1, boxShadow: 0 }}>
                        <CardContent>
                            <Controller
                                name='isHasAccidentHistory'
                                control={control}
                                render={({field}) => (
                                    <FormControl error={!!errors['isHasAccidentHistory']} fullWidth>
                                        <RadioGroup
                                            {...field}
                                            // row={!isMobile}
                                            sx={{
                                                // justifyContent: isMobile ? 'flex-start' : 'space-between',
                                                // gap: 0.5,
                                                // display: 'flex',
                                                // flexDirection: 'row',
                                                // border: '1px solid #d1d5db',
                                                // borderRadius: '8px',
                                                // overflow: 'hidden',
                                                // backgroundColor: '#ffffff',
                                                // boxShadow: '0 1px 3px rgba(0, 0, 0, 0.1)',
                                            }}
                                        >
                                            <CustomLabel
                                                value={1}
                                                control={
                                                    <Radio
                                                        sx={{
                                                            '&.Mui-checked': {
                                                                color: '#473BF0',
                                                            }
                                                        }}
                                                    />
                                                }
                                                label="เคยเกิดอุบัติเหตุ จากความง่วงนอนขณะขับรถ"
                                                sx={{
                                                    backgroundColor: field.value === '1' ? '#EDECFE' : '#F8F9FB',
                                                    color: field.value === '1' ? '#4E4D49' : '#4E4D49',
                                                    textAlign: 'left'
                                                }}
                                            />
                                            <CustomLabel
                                                value={0}
                                                control={
                                                    <Radio
                                                        sx={{
                                                            '&.Mui-checked': {
                                                                color: '#473BF0',
                                                            }
                                                        }}
                                                    />
                                                }
                                                label="ไม่เคยเกิดอุบัติเหตุ จากความง่วงนอนขณะขับรถ"
                                                sx={{
                                                    backgroundColor: field.value === '0' ? '#EDECFE' : '#F8F9FB',
                                                    color: field.value === '0' ? '#4E4D49' : '#4E4D49',
                                                    // paddingLeft: 0
                                                    textAlign: 'left'
                                                }}
                                            />
                                        </RadioGroup>
                                        {errors['isHasAccidentHistory'] && (
                                            <FormHelperText>{errors['isHasAccidentHistory']?.message}</FormHelperText>
                                        )}
                                    </FormControl>
                                )}
                            />
                        </CardContent>
                        <CardContent sx={{ paddingBottom: 0 }}>
                            <Divider sx={{ my: 2, backgroundColor: '#473BF0' }} />
                        </CardContent>
                    </Card>
                     <Card sx={{ mb: 1, boxShadow: 0 }}>
                        <CardContent sx={{ textAlign: 'center' }}>
                            <Button
                                type="submit"
                                variant="contained"
                                // fullWidth
                                size="large"
                                sx={{
                                    // mt: 3,
                                    py: 2,
                                    backgroundColor: '#223367   ',
                                    '&:hover': {
                                        backgroundColor: '#333'
                                    },
                                    fontSize: '1.1rem',
                                    fontWeight: 'bold',
                                }}
                            >
                                ดูผลการประเมิน
                            </Button>
                        </CardContent>
                    </Card>
                </form>
            }
        />
    )
}