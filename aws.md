# Amazon Web Services

## Credential management

Create a file like `~/.aws/credentials` and add your AWS Access and secret keys to it, under specific profiles.
Mine looks like this:

```
[default]
aws_access_key_id = XXXXX
aws_secret_access_key = XXXXX

[shift]
aws_access_key_id = XXXXXXXXXX
aws_secret_access_key = XXXXXXXXXX

[eisfire]
aws_access_key_id = XXXXXXXXXXXXXXXXXXXX 
aws_secret_access_key = XXXXXXXXXXXXXXXXXX
```

Then, when running AWS CLI commands, add a flag like `--profile shift` to automatically use the credentials associated with the `shift` profile.

## Resetting password using AWS CLI

Use a command like the following (after you have authenticated with multi-factor authentication):

```
aws iam update-login-profile --user-name 'myuser' --password 'mypassword'
```

Documentation for [`update-login-profile.html`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/iam/update-login-profile.html).
