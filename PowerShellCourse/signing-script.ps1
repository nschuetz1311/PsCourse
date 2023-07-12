New-SelfSignedCertificate -FriendlyName definitelyTrustworthyCertificate -Subject Niko@Mail.de -type CodeSigningCert -CertStoreLocation
$cert = gci Cert:\CurrentUser\My -CodeSigningCert
Set-AuthenticodeSignature -FilePath $pwd\notes.ps1 -Certificate $cert

http://timestamp.digicert.com