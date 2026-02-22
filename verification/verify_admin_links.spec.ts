import { test, expect } from '@playwright/test';

test('verify admin links', async ({ page }) => {
  // Navigate to home
  console.log('Navigating to http://localhost:3005');
  await page.goto('http://localhost:3005');

  // Verify Sign In link in Navbar
  console.log('Verifying Sign In link...');
  const signInLink = page.getByRole('link', { name: 'Sign In' });
  await expect(signInLink).toBeVisible();
  await expect(signInLink).toHaveAttribute('href', '/admin');
  console.log('Sign In link verified.');

  // Verify Admin Dashboard link in Footer
  console.log('Verifying Admin Dashboard link in Footer...');
  const adminLink = page.getByRole('link', { name: 'Admin Dashboard' });
  await adminLink.scrollIntoViewIfNeeded();
  await expect(adminLink).toBeVisible();
  await expect(adminLink).toHaveAttribute('href', '/admin');
  console.log('Footer Admin link verified.');

  // Screenshot
  console.log('Taking screenshot...');
  await page.screenshot({ path: 'verification/admin_links.png', fullPage: true });
});
