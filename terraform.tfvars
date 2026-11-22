# Local values for this stack. git-ignored (see .gitignore).

# Existing Route53 PUBLIC hosted zone. The stack creates in it:
#   expense.<domain>                         -> ALB (the app)
#   frontend.<domain>, backend.<domain>,
#   mysql.<domain>                           -> private IPs (VM-to-VM traffic)
# Change this if the course domain is a different zone.
domain_name = "nirmala02.online"

# Your public IP, /32. Re-check if your IP changes:
#   curl -s https://checkip.amazonaws.com
admin_cidr = "106.216.203.146/32"

# Extra CIDRs that may scrape the exporter ports (admin_cidr and the VPC are
# always allowed). E.g. a Prometheus server outside this VPC: ["198.51.100.7/32"]
monitoring_cidrs = []

mysql_repo_url    = "https://github.com/aiops-02/expense-mysql-v1.git"
backend_repo_url  = "https://github.com/aiops-02/expense-backend-v1.git"
frontend_repo_url = "https://github.com/aiops-02/expense-frontend-v1.git"

# Git branch to deploy.
mysql_repo_ref    = "main"
backend_repo_ref  = "main"
frontend_repo_ref = "main"

aws_region   = "ap-southeast-2"
app_hostname = "expense"

/* # # SSH login of the course AMI (password-based, practice only).
# ssh_user     = "ec2-user"
# ssh_password = "DevOps321"
*/
private_key_path = "C:/Users/YourUsername/.ssh/your-key.pem"
# Extra backend env vars, written as-is into /etc/expense/backend.env.
backend_extra_env = {}
# backend_extra_env = {
#   ENABLE_DEBUG_API = "true"
#   DEBUG_TOKEN      = "change-me-please"
# }
