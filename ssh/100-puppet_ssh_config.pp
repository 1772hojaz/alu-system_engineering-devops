#!/usr/bin/env bash
#Just as in the previous configuration file task, we’d like you to set up your client SSH configuration file so that you can connect to a server without typing a password
Host *
	IdentityFile ~/.ssh/school
	PassworAuthentication no
