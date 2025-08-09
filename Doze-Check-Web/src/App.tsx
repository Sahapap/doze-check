import { Routes, Route } from 'react-router-dom';
import Home from './pages/Home';
import RegisterPage from './pages/RegisterPage'
import MainLayout from './layouts/MainLayout';
import EpworthAssessment from './pages/EpworthAssessment';
import StopBangAssessment from './pages/StopBangAssessment';
import AccidentHistoryAssessment from './pages/AccidentHistoryAssessment';
import AssessmentResult from './pages/AssessmentResult';

function App() {

  return (
	<Routes>
		<Route path="/" element={<Home />} />
		<Route path='/stop-bang-assessment' element={<StopBangAssessment/>} />
		<Route path='/epworth-assessment' element={<EpworthAssessment/>}/>
		<Route path='/accident-history-assessment' element={<AccidentHistoryAssessment/>} />
		<Route path='/assessment-result' element={<AssessmentResult/>} />
		<Route element={<MainLayout/>}>
			<Route path="/register" element={<RegisterPage/>} />
		</Route>
	</Routes>
  )
}

export default App
