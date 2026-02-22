const { chromium } = require('playwright');

(async () => {
  const browser = await chromium.launch();
  const page = await browser.newPage();

  try {
    console.log('Navigating to home...');
    // Give server some time to start if needed, but retry logic in goto is better
    // But local dev server might take a while to compile
    // I'll add a loop to wait for server
    let connected = false;
    for (let i = 0; i < 30; i++) {
        try {
            await page.goto('http://localhost:3005', { timeout: 3000 });
            connected = true;
            break;
        } catch (e) {
            console.log('Waiting for server...');
            await new Promise(r => setTimeout(r, 1000));
        }
    }
    if (!connected) throw new Error('Could not connect to server');

    // Wait for header
    await page.waitForSelector('header');

    // Check "Sign In" link
    console.log('Checking Sign In link...');
    // The "Sign In" button is an 'a' tag now because I used <Link> inside <Button asChild>
    // Wait, <Button asChild><Link ...>Sign In</Link></Button> renders as <a class="... button classes ...">Sign In</a>
    const signInLink = page.getByRole('link', { name: 'Sign In' });
    await signInLink.waitFor();
    const href = await signInLink.getAttribute('href');
    console.log('Sign In link href:', href);
    if (href !== '/admin') {
        throw new Error(`Expected Sign In link to be /admin, but got ${href}`);
    }

    // Check Footer link
    console.log('Checking Footer Admin Dashboard link...');
    const adminLink = page.getByRole('link', { name: 'Admin Dashboard' });
    // Footer might be down the page, so scroll
    await adminLink.scrollIntoViewIfNeeded();
    await adminLink.waitFor();
    const footerHref = await adminLink.getAttribute('href');
    console.log('Footer Admin link href:', footerHref);
    if (footerHref !== '/admin') {
        throw new Error(`Expected Footer Admin link to be /admin, but got ${footerHref}`);
    }

    // Take screenshot of header
    console.log('Taking screenshot of header...');
    await page.setViewportSize({ width: 1280, height: 720 });
    await page.evaluate(() => window.scrollTo(0, 0));
    await page.screenshot({ path: 'verification/header_link.png', clip: { x: 0, y: 0, width: 1280, height: 100 } });

    // Take screenshot of footer
    console.log('Taking screenshot of footer...');
    const footer = page.locator('footer');
    await footer.scrollIntoViewIfNeeded();
    await footer.screenshot({ path: 'verification/footer_link.png' });

    console.log('Verification successful!');
  } catch (error) {
    console.error('Verification failed:', error);
    process.exit(1);
  } finally {
    await browser.close();
  }
})();
