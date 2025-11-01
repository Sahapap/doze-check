import { useCallback, useEffect, useMemo, useState } from "react"
import axiosInstance from "../api/axiosInstance"
import { useNavigate } from "react-router-dom"
import stopBangAssessmentData from '../data/stopBang.json'
import epworthAssessmentData from '../data/epworth.json'
import { AppBar, Box, Button, Grid, Paper, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, Toolbar, Typography } from "@mui/material"
import { type ReportData} from "../interfaces/ReportInterface"
import * as XLSX from "xlsx";
import { saveAs } from 'file-saver';

export default function ReportPage(){
    const navigate = useNavigate()
    const [reportData, setReportData] = useState<ReportData | null>(null)

    useEffect(() => {
        async function FetchReport(){
            try{
                const res = await axiosInstance('/report', {
                    headers: {
                        Authorization: `bearer ${localStorage.getItem('accessToken')}`
                    }
                })
                setReportData(res.data)
            }catch(e){
                console.error(e)
                navigate('/login')
            }
        }

        FetchReport()
    }, [navigate])

    const handleLogout = () => {
        localStorage.removeItem('accessToken')
        localStorage.removeItem('refreshToken')

        navigate('/login')
    }

    const totalMale = useMemo(() => reportData?.demographics.gender.find(f => f.label.toLowerCase() === 'male')?.value ?? '-', [reportData])
    const totalFemale = useMemo(() => reportData?.demographics.gender.find(f => f.label.toLowerCase() === 'female')?.value ?? '-', [reportData])

    const ageReportData = useMemo(() => {
        const ageData = reportData?.demographics.age
        return [
            'จำนวน',
            ageData?.find(f => f.label.toLowerCase() === "more than 50")?.value ?? '-',
            ageData?.find(f => f.label.toLowerCase() === "less than 50")?.value ?? '-',
        ]
    }, [reportData])

    const stopBangReportData: string[][] = useMemo(() => {
        const stopBangData = reportData?.assessments.stopBang

        return stopBangAssessmentData.assessments.reduce((acc: string[][], curr) => {
            const currQustion = stopBangData?.find(f => f.id.toLowerCase() === curr.id.toLowerCase())
            acc.push([
                curr.question,
                currQustion?.results.find(f => f.label === "yes")?.value.toString() ?? "-",
                currQustion?.results.find(f => f.label === "no")?.value.toString() ?? "-"
            ])
            return acc
        }, [])
    }, [reportData])

    const epworthReportData: string[][] = useMemo(() => {
        const epworthData = reportData?.assessments.epworth

        return epworthAssessmentData.assessments.reduce((acc: string[][], curr) => {
            const currQustion = epworthData?.find(f => f.id.toLowerCase() === curr.id.toLowerCase())
            acc.push([
                curr.question,
                currQustion?.results.find(f => f.label.toLowerCase() === "scorezero")?.value.toString() ?? "-",
                currQustion?.results.find(f => f.label.toLowerCase() === "scoreone")?.value.toString() ?? "-",
                currQustion?.results.find(f => f.label.toLowerCase() === "scoretwo")?.value.toString() ?? "-",
                currQustion?.results.find(f => f.label.toLowerCase() === "scorethree")?.value.toString() ?? "-"
            ])
            return acc
        }, [])
    }, [reportData])

    const accidentHistoryReportData = useMemo(() => {
        const accidentHistoryData = reportData?.assessments.accidentHistory
        return [
            "เคยเกิดอุบัติเหตุหรือไม่",
            accidentHistoryData?.find(f => f.label.toLowerCase() === "yes")?.value ?? "-",
            accidentHistoryData?.find(f => f.label.toLowerCase() === "no")?.value ?? "-",
        ]
    }, [reportData])

    const handleDownloadExcel = useCallback(() => {
        if(!reportData){
            alert('')
        }
        const workbook = XLSX.utils.book_new();

        // 🧮 Sheet 1: Summary
        const summarySheet = XLSX.utils.json_to_sheet([{ "จำนวน": reportData?.total ?? "-" }]);
        XLSX.utils.book_append_sheet(workbook, summarySheet, "จำนวนผู้ทำแบบสอบถามทั้งหมด");

        // 🧩 Sheet 2: Demographics
        const genderSheet = XLSX.utils.json_to_sheet([{
            "": "จำนวน",
            "ชาย": totalMale,
            "หญิง": totalFemale
        }]);
        XLSX.utils.book_append_sheet(workbook, genderSheet, "เพศ");

        const ageSheet = XLSX.utils.json_to_sheet([{
            "": ageReportData[0],
            "มากกว่า 50 ปี": ageReportData[1],
            "น้อยกว่า 50 ปี": ageReportData[2]
        }]);
        XLSX.utils.book_append_sheet(workbook, ageSheet, "อายุ");

        // 🧪 Sheet 3: StopBang Assessments
        const stopBangFlatten = stopBangReportData.map((item) => ({
            "คำถาม": item[0],
            "คำตอบ (ใช่)": item[1],
            "คำตอบ (ไม่)": item[2],
        }));
        const stopBangSheet = XLSX.utils.json_to_sheet(stopBangFlatten ?? []);
        XLSX.utils.book_append_sheet(workbook, stopBangSheet, "แบบสอบถาม Stop-Bang");

        // 🧠 Sheet 4: Epworth Assessments
        const epworthFlatten = epworthReportData.map((item) => ({
            question: item[0],
            "คำตอบ (0)": item[1],
            "คำตอบ (1)": item[2],
            "คำตอบ (2)": item[3],
            "คำตอบ (3)": item[4],
        }));
        const epworthSheet = XLSX.utils.json_to_sheet(epworthFlatten ?? []);
        XLSX.utils.book_append_sheet(workbook, epworthSheet, "แบบสอบถาม Epworth");

        // 🚗 Sheet 5: Accident History
        const accidentSheet = XLSX.utils.json_to_sheet([{
            "คำถาม": accidentHistoryReportData[0],
            "ใช่": accidentHistoryReportData[1],
            "ไม่": accidentHistoryReportData[2]
        }]);
        XLSX.utils.book_append_sheet(workbook, accidentSheet, "แบบสอบถาม Acccident History");

        // 💾 Export the workbook
        const excelBuffer = XLSX.write(workbook, { bookType: "xlsx", type: "array" });
        const blob = new Blob([excelBuffer], { type: "application/octet-stream" });
        saveAs(blob, "dashboard_statistics.xlsx");
    }, [
        reportData,
        stopBangReportData,
        epworthReportData,
        accidentHistoryReportData,
        ageReportData,
        totalMale,
        totalFemale
    ])

    return(
        <Box sx={{ flexGrow: 1, backgroundColor: 'white' }}>
            <AppBar position="static">
                <Toolbar>
                    <Typography variant="h6" component="div" sx={{ flexGrow: 1 }}>
                        Doze Check Report
                    </Typography>
                    <Button
                        color="inherit"
                        onClick={handleLogout}
                    >
                        Logout
                    </Button>
                </Toolbar>
            </AppBar>
            <Grid container spacing={2}>
                <Grid size={12} p={2}>
                    <div style={{ textAlign: 'right'}}>
                        <Button
                            variant="outlined"
                            onClick={handleDownloadExcel}
                        >
                            Download Report
                        </Button>
                    </div>
                    <Typography variant="h6" color="primary">
                        จำนวนผู้ทำแบบสอบถามทั้งหมด: {reportData?.total ?? "-"}
                    </Typography>
                    <Typography variant="h6" color="primary">
                        ชาย : {totalMale}
                    </Typography>
                    <Typography variant="h6" color="primary">
                        หญิง : {totalFemale}
                    </Typography>
                </Grid>
                <Grid size={12} p={2}>
                    <Typography variant="h6" color="primary">
                        ช่วงอายุ:
                    </Typography>
                    <TableContainer component={Paper}>
                        <Table sx={{ minWidth: 650 }} aria-label="simple table" stickyHeader>
                            <TableHead>
                                <TableRow>
                                    <TableCell></TableCell>
                                    <TableCell align="right">มากกว่า 50 ปี</TableCell>
                                    <TableCell align="right">น้อยกว่า 50 ปี</TableCell>
                                </TableRow>
                            </TableHead>
                            <TableBody>
                                <TableRow
                                    sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                                >
                                    {ageReportData.map((m, i) => {
                                        if(i === 0){
                                            return (
                                                <TableCell component="th" scope="row" key={`age-row-${i}`}>
                                                    {m}
                                                </TableCell>
                                            )
                                        }else{
                                            return(
                                                <TableCell align="right" key={`age-row-${i}`}>{m}</TableCell>
                                            )
                                        }
                                    })}
                                </TableRow>
                            </TableBody>
                        </Table>
                    </TableContainer>
                </Grid>
                <Grid size={12} p={2}>
                    <Typography variant="h6" color="primary">
                        สถิติการทำแบบสอบถาม Stop-Bang:
                    </Typography>
                    <TableContainer component={Paper}>
                        <Table sx={{ minWidth: 650 }} aria-label="simple table" stickyHeader>
                            <TableHead>
                                <TableRow>
                                    <TableCell >คำถาม/คำตอบ</TableCell>
                                    <TableCell align="right">ใช่</TableCell>
                                    <TableCell align="right">ไม่</TableCell>
                                </TableRow>
                            </TableHead>
                            <TableBody>
                            {stopBangReportData.map((data, i) => {
                                return(
                                    <TableRow
                                        key={`stop-bang-report-data-${i}`}
                                        sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                                    >
                                        {data.map((m, j) => {
                                            if(j === 0){
                                                return(
                                                    <TableCell component="th" scope="row" key={`stop-bang-report-data-${i}-${j}`}>
                                                    {m}
                                                    </TableCell>
                                                )
                                            }else{
                                                return(
                                                    <TableCell align="right" key={`stop-bang-report-data-${i}-${j}`}>
                                                    {m}
                                                    </TableCell>
                                                )
                                            }
                                        })}
                                </TableRow>
                                )
                            })}
                            </TableBody>
                        </Table>
                    </TableContainer>
                </Grid>
                <Grid size={12} p={2}>
                    <Typography variant="h6" color="primary">
                        สถิติการทำแบบสอบถาม Epworth:
                    </Typography>
                    <TableContainer component={Paper}>
                        <Table sx={{ minWidth: 650 }} aria-label="simple table" stickyHeader>
                            <TableHead>
                                <TableRow>
                                    <TableCell>คำถาม/คำตอบ</TableCell>
                                    <TableCell align="right">คำตอบ 0</TableCell>
                                    <TableCell align="right">คำตอบ 1</TableCell>
                                    <TableCell align="right">คำตอบ 2</TableCell>
                                    <TableCell align="right">คำตอบ 3</TableCell>
                                </TableRow>
                            </TableHead>
                            <TableBody>
                            {epworthReportData.map((data, i) => {
                                return(
                                    <TableRow
                                        key={`epworth-report-data-${i}`}
                                        sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                                    >
                                        {data.map((m, j) => {
                                            if(j === 0){
                                                return(
                                                    <TableCell component="th" scope="row" key={`epworth-report-data-${i}-${j}`}>
                                                    {m}
                                                    </TableCell>
                                                )
                                            }else{
                                                return(
                                                    <TableCell align="right" key={`stop-bang-report-data-${i}-${j}`}>
                                                    {m}
                                                    </TableCell>
                                                )
                                            }
                                        })}
                                </TableRow>
                                )
                            })}
                            </TableBody>
                        </Table>
                    </TableContainer>
                </Grid>
                <Grid size={12} p={2}>
                     <Typography variant="h6" color="primary">
                        สถิติการทำแบบสอบถาม ประวัติการเกิดอุบัติเหตุ:
                    </Typography>
                    <TableContainer component={Paper}>
                        <Table sx={{ minWidth: 650 }} aria-label="simple table" stickyHeader>
                            <TableHead>
                                <TableRow>
                                    <TableCell>คำถาม/คำตอบ</TableCell>
                                    <TableCell align="right">ใช่</TableCell>
                                    <TableCell align="right">ไม่</TableCell>
                                </TableRow>
                            </TableHead>
                            <TableBody>
                                <TableRow
                                    sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                                >
                                    {accidentHistoryReportData.map((m, i) => {
                                        if(i === 0){
                                            return(
                                                 <TableCell component="th" scope="row" key={`accident-history-data-column-${i}`}>
                                                    {m}
                                                </TableCell>
                                            )
                                        }else{
                                            return(
                                                 <TableCell align="right" key={`accident-history-data-column-${i}`}>
                                                    {m}
                                                </TableCell>
                                            )
                                        }
                                    })}
                                </TableRow>
                            </TableBody>
                        </Table>
                    </TableContainer>
                </Grid>
            </Grid>
        </Box>
    )
}