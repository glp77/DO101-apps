# Cambio diretiva de seguridad para el usuario
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

cd 'C:\Users\l1001836\OneDrive - Banco de Galicia Y Buenos Aires S.A\documentos_empresas\galicia\cursos\Openshift'

# $rutaOC = 'C:\Users\l1001836\"OneDrive - Banco de Galicia Y Buenos Aires S.A"\documentos_empresas\galicia\cursos\Openshift\oc.exe'

# C:\Users\l1001836\"OneDrive - Banco de Galicia Y Buenos Aires S.A"\documentos_empresas\galicia\cursos\Openshift\oc.exe login --token=sha256~NxEcmUKveUydnABg_R48BVOLLZX_VLNvuvARJs1ixYg --server=https://api.na46a.prod.ole.redhat.com:6443

# $rutaOC login --token=sha256~NxEcmUKveUydnABg_R48BVOLLZX_VLNvuvARJs1ixYg --server=https://api.na46a.prod.ole.redhat.com:6443

.\oc.exe login --token=sha256~C5xjp1sJzkponDzRnGDrMOtsvyeeP8bN6T00sJ8ODXc --server=https://api.na46a.prod.ole.redhat.com:6443

.\oc.exe new-project ggqukr-version

.\oc.exe new-app --name version https://github.com/glp77/DO101-apps#update-app --context-dir version

.\oc.exe logs -f buildconfig/version

.\oc.exe get all # veo todos los componentes del proyecto

.\oc.exe expose svc/version

.\oc.exe get route

# 467f614d7a91cec1432ef1f343b569bc
# http://api.openweathermap.org/data/2.5/forecast?id=524901&appid=467f614d7a91cec1432ef1f343b569bc

.\oc.exe whoami # para saber mi usuario

.\oc.exe status # saber en que proyecto estoy parado

.\oc.exe project ggqukr-scale # me posiciono en un proyecto

.\oc.exe get hpa # muestra configuracion de auto escalado de pods

.\oc.exe autoscale deployment/scale --min=1 --max=3 --cpu-percent=80 # configuro auto escalado de pods

.\oc.exe 

.\oc.exe 