import { lazy, Suspense } from 'react';
import { Routes, Route } from 'react-router-dom';

const Home = lazy(() => import('./pages/Home/Home'))
const RegisterPage = lazy(() => import('./pages/RegisterPage'))
const EpworthAssessment = lazy(() => import('./pages/EpworthAssessment'))
const StopBangAssessment = lazy(() => import('./pages/StopBangAssessment'))
const AccidentHistoryAssessment = lazy(() => import('./pages/AccidentHistoryAssessment'))
const AssessmentResult = lazy(() => import('./pages/AssessmentResult'))

const Login = lazy(() => import('./pages/Login'))
const ReportPage = lazy(() => import('./pages/Report'))

function App() {

	return (
		<Suspense fallback={<div>Loading...</div>}>
			<Routes>
				<Route path="/" element={<Home />} />
				<Route path='/stop-bang-assessment' element={<StopBangAssessment/>} />
				<Route path='/epworth-assessment' element={<EpworthAssessment/>}/>
				<Route path='/accident-history-assessment' element={<AccidentHistoryAssessment/>} />
				<Route path='/assessment-result' element={<AssessmentResult/>} />
				<Route path="/register" element={<RegisterPage/>} />

				<Route path='/login' element={<Login/>} />
				<Route path='/report' element={<ReportPage/>} />
			</Routes>
		</Suspense>
	)
}

export default App
