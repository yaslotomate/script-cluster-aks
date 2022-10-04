az login
 az account set --subscription xxxxxxxxxx-dbe9-475a-b0h5-xxxxxxxxxx
az group create --name ResourceGroup-kube --location westeurope
az acr create --resource-group ResourceGroup-kube --name acr-kube --sku Basic

az aks create --resource-group ResourceGroup-kube --name AKSCluster --node-count 2 --generate-ssh-keys --attach-acr ltmacrmsv4