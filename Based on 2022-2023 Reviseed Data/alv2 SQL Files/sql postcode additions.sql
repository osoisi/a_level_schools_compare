--Researched the Schools without postcodes and added them in

UPDATE s_england_school_information
	SET POSTCODE = 'OX11'
	WHERE POSTCODE IS NULL AND LANAME != 'BFPO Overseas Establishments' 
	AND SCHNAME = 'Didcot Sixth Form College'
GO

UPDATE s_england_school_information
	SET POSTCODE = 'SE26 4RD'
	WHERE POSTCODE IS NULL AND LANAME != 'BFPO Overseas Establishments' 
	AND SCHNAME = 'Sydenham and Forest Hill Sixth Form'
GO

UPDATE s_england_school_information
	SET POSTCODE = 'ME8 6JH'
	WHERE POSTCODE IS NULL AND SCHNAME = 'Maritime Academy'
GO

UPDATE s_england_school_information
	SET POSTCODE = 'EN3 5PA'
	WHERE POSTCODE IS NULL AND SCHNAME = 'Salmons Brook School'
GO

UPDATE s_england_school_information
	SET POSTCODE = 'OX15 4PJ'
	WHERE POSTCODE IS NULL AND SCHNAME = 'Bloxham Grove Academy'
GO

UPDATE s_england_school_information
	SET POSTCODE = 'OX14 1JB'
	WHERE POSTCODE IS NULL AND SCHNAME = 'JMF6 Abingdon'
GO