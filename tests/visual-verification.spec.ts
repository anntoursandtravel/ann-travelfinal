import { test, expect } from '@playwright/test';

test('verify homepage visual design', async ({ page }) => {
  // Set viewport for a common desktop size
  await page.setViewportSize({ width: 1440, height: 900 });

  // Navigate to the homepage
  await page.goto('http://localhost:3000');

  // Wait for the hero section to load
  await page.waitForSelector('h1:has-text("Bespoke African Adventures")');

  // Take a screenshot of the Hero section
  await page.screenshot({ path: 'home_hero.png', fullPage: false });
  console.log('Hero screenshot taken: home_hero.png');

  // Scroll to "Why Nile Crown Safaris?" section
  const whyUs = page.locator('h2:has-text("Why Nile Crown Safaris?")');
  await whyUs.scrollIntoViewIfNeeded();
  // Wait a bit for animations if any
  await page.waitForTimeout(500);
  await page.screenshot({ path: 'why_us.png', fullPage: false });
  console.log('Why Us screenshot taken: why_us.png');

  // Scroll to "Discover East Africa" section
  const whereTo = page.locator('h2:has-text("Discover East Africa")');
  await whereTo.scrollIntoViewIfNeeded();
  await page.waitForTimeout(500);
  await page.screenshot({ path: 'where_to.png', fullPage: false });
  console.log('Where To screenshot taken: where_to.png');
});

test('verify mobile navigation', async ({ page }) => {
  // Set viewport for a mobile device
  await page.setViewportSize({ width: 375, height: 812 });

  // Navigate to the homepage
  await page.goto('http://localhost:3000');

  // Take screenshot of collapsed mobile navbar
  await page.screenshot({ path: 'mobile_nav_collapsed.png' });
  console.log('Mobile nav collapsed screenshot taken: mobile_nav_collapsed.png');

  // Trigger mobile menu
  await page.click('button:has-text("Open menu")');

  // Wait for sheet to open (look for the "Destinations" header in the mobile menu)
  const menuHeader = page.locator('h4:has-text("Destinations")');
  await menuHeader.waitFor({ state: 'visible' });

  // Wait a bit for the slide-in animation to complete
  await page.waitForTimeout(1000);

  // Take screenshot of open mobile navbar
  await page.screenshot({ path: 'mobile_nav_open.png', fullPage: true });
  console.log('Mobile nav open screenshot taken: mobile_nav_open.png');
});
