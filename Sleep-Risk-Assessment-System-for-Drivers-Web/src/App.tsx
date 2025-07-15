import { Routes, Route } from 'react-router-dom';
import Home from './pages/Home';
import RegisterPage from './pages/RegisterPage'
import MainLayout from './layouts/MainLayout';

function App() {

  return (
	<Routes>
		<Route path="/" element={<Home />} />
		<Route element={<MainLayout/>}>
			<Route path="/register" element={<RegisterPage/>} />
		</Route>
	</Routes>
  )
}

export default App
