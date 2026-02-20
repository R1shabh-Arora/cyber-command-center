# 🚀 Deployment Guide

## Quick Start (3 Steps)

### Step 1: Create GitHub Repo
1. Go to https://github.com/new
2. Repository name: `cyber-command-center`
3. Make it **Public**
4. Click **Create repository**

### Step 2: Push the Code

Run these commands in your terminal:

```bash
# Navigate to the project
cd ~/.openclaw/workspace/cyber-command-center

# Add the remote (replace with your repo URL)
git remote add origin https://github.com/R1shabh-Arora/cyber-command-center.git

# Push to GitHub
git push -u origin master
```

If prompted for credentials, use a **Personal Access Token**:
1. Go to https://github.com/settings/tokens
2. Click "Generate new token (classic)"
3. Select `repo` scope
4. Copy the token and use it as your password

### Step 3: Enable GitHub Pages

1. Go to: https://github.com/R1shabh-Arora/cyber-command-center/settings/pages
2. Under **Source**, select **Deploy from a branch**
3. Select **master** branch and **/(root)** folder
4. Click **Save**

Wait 2-3 minutes, then visit:
- `https://R1shabh-Arora.github.io/cyber-command-center`

---

## 🌐 Custom Domain Setup (ops.rishabh.uk)

### DNS Configuration

Log into your domain registrar (where you bought rishabh.uk) and add this DNS record:

| Type | Name | Value | TTL |
|------|------|-------|-----|
| CNAME | ops | R1shabh-Arora.github.io | 3600 |

### Enable HTTPS

1. In GitHub Pages settings, check **Enforce HTTPS**
2. Wait 5-10 minutes for SSL certificate to generate
3. Visit `https://ops.rishabh.uk`

---

## ✅ Verification Checklist

- [ ] GitHub repo created
- [ ] Code pushed to master branch
- [ ] GitHub Pages enabled
- [ ] DNS CNAME record added
- [ ] HTTPS enabled
- [ ] Site loads at `https://ops.rishabh.uk`

---

## 🛠️ Troubleshooting

### "Repository not found"
Make sure the repo exists and is public.

### "Permission denied"
Use a Personal Access Token instead of password.

### "Domain doesn't resolve"
DNS can take up to 24 hours to propagate. Check with:
```bash
nslookup ops.rishabh.uk
```

### "HTTPS not working"
Wait 10 minutes after enabling, then refresh. GitHub needs time to request the SSL cert.

---

## 🎉 Success!

Your Cyber Command Center will be live at:
```
https://ops.rishabh.uk
```

Show it off. Impress recruiters. Track your journey to CompTIA glory. 

**🥀 Built by Black Rose**
