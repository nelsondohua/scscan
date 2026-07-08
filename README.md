# scscan

Askey Small Cell Discovery Tool

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/nelsondohua/scscan/main/install.sh | sudo bash
```

## Run

```bash
scscan
```

## Update OUI Database

```bash
sudo /usr/local/bin/scscan -u
```


## Passwordless SSH (Recommended)

`scscan` uses SSH local port forwarding to create HTTPS tunnels.

For the best experience, configure SSH key authentication to localhost.

### 1. Generate an SSH key (if you don't already have one)

```bash
ssh-keygen -t ed25519
```

Press **Enter** to accept the default file location.

### 2. Install the public key for localhost

```bash
ssh-copy-id localhost
```

or

```bash
ssh-copy-id $(whoami)@localhost
```

### 3. Verify

```bash
ssh localhost true
```

If the command returns without asking for a password, the configuration is complete.

Now simply run:

```bash
scscan
```
