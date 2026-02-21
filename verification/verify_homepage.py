from playwright.sync_api import sync_playwright

def run(playwright):
    browser = playwright.chromium.launch(headless=True)
    page = browser.new_page()
    try:
        page.goto("http://localhost:3000")
        page.wait_for_timeout(5000) # Wait for page to load
        page.screenshot(path="verification/homepage.png", full_page=True)
        print("Screenshot taken")
    except Exception as e:
        print(f"Error: {e}")
    finally:
        browser.close()

with sync_playwright() as playwright:
    run(playwright)
