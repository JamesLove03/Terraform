import subprocess
import json
from pathlib import Path


def run(cmd, cwd=none):
    result = subprocess.run(cmd, shell=True, check=True, capture_output=True, text=True, cwd=cwd)
    return result.stdout.strip()

#First run terraform 
run("terraform init", cwd="terraform")
run("terraform apply -auto-approve", cwd="terraform")

#Retrieve the IP addresses from the output (cause we are using dynamic IPs)
output_json = run("terraform output -json", cwd="terraform")

output = json.loads(output_json)
web_ip = output['']['value']
dns_ip = output['']['value']
database_ip = output['']['value']
firewall_ip = output['']['value']


#Run our ansible playbooks