**Provisioners** in Terraform are used to execute scripts or commands on local or remote machines after your resources are created.

Think of them as “one-time setup steps” that Terraform performs once infrastructure is ready — like:

Installing packages on a VM

Copying configuration files

Running post-deployment scripts

**But — a quick warning — provisioners are not the Terraform way of configuration management. Terraform is declarative, while provisioners are more procedural.
So use them only when you can’t achieve something with Terraform resources or configuration management tools like Ansible.**


**Use provisioners when:**

You need a one-time setup right after provisioning.

You need to integrate with a system that Terraform doesn’t support natively.

You’re running small bootstrap scripts.

**Avoid provisioners when:**

You can use native Terraform resources instead.

You have a configuration management tool (like Ansible, Chef, or Puppet).

You need long-term, repeatable configuration logic.

In production environments, provisioners should be your last resort, not your default choice.
