# Ultra Beep Test — GitHub Pages

Marketing, **Support**, and **Privacy** pages for App Store Connect (same pattern as Arc Tunes).

## Local preview

```bash
cd github-pages
python3 -m http.server 8765
# open http://localhost:8765
```

## Publish

1. Create a **public** GitHub repo named `ultrbeeptest` (empty is fine).
2. From this folder:

```bash
./publish.sh YOUR_GITHUB_USERNAME
```

Example:

```bash
./publish.sh jnovikow
```

3. On GitHub: **Settings → Pages → Deploy from branch `main` / (root)**.
4. Wait a minute, then open:

- `https://YOUR_USER.github.io/ultrbeeptest/`
- `https://YOUR_USER.github.io/ultrbeeptest/support.html`
- `https://YOUR_USER.github.io/ultrbeeptest/privacy.html`

## App Store Connect

| Field | URL |
|--------|-----|
| Support URL | `…/support.html` |
| Privacy Policy URL | `…/privacy.html` |
| Marketing URL (optional) | `…/` |

## Files

| File | Purpose |
|------|---------|
| `index.html` | Home / marketing |
| `support.html` | Support URL |
| `privacy.html` | Privacy Policy URL |
| `styles.css` | Ultra Beep brand theme |
| `logo.png` / `icon.png` | Branding |
| `1.png`… | Screenshots (replace before final submit) |
| `publish.sh` | Push to GitHub Pages |

## Before final submission

- [ ] Replace screenshots with final 6.7″ / 6.1″ App Store captures  
- [ ] Confirm contact email on support + privacy pages  
- [ ] Pages live over **https** and load on a phone browser  
