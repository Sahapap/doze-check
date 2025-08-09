import { FormControlLabel, Radio, styled } from "@mui/material";

// Custom styled label
const CustomLabel = styled(FormControlLabel)(() => ({
    margin: 0,
    flex: 1,
    width: '100%',
    '& .MuiFormControlLabel-label': {
        width: '100%',
        padding: '16px 24px',
        fontWeight: 500,
        fontSize: '16px',
        cursor: 'pointer',
        transition: 'all 0.2s ease-in-out',
        userSelect: 'none',
    }
}));

// Custom styled radio button
const CustomRadio = styled(Radio)(() => ({
  display: 'none', // Hide the default radio button
}));

export {
    CustomLabel,
    CustomRadio
}