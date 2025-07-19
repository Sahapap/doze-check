import { Routes, Route } from 'react-router-dom';
import Home from './pages/Home';
import RegisterPage from './pages/RegisterPage'
import MainLayout from './layouts/MainLayout';
import StopBangAssessment from './pages/StopBangAssessment';
import EpworthAssessment from './pages/EpworthAssessment';

function App() {

  return (
	<Routes>
		<Route path="/" element={<Home />} />
		<Route element={<MainLayout/>}>
			<Route path="/register" element={<RegisterPage/>} />
			<Route path='/stop-bang-assessment' element={<StopBangAssessment/>} />
			<Route path='/epworth-assessment' element={<EpworthAssessment/>}/>
		</Route>
	</Routes>
  )
}

export default App
