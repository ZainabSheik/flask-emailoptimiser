from app import app  # Import your Flask app instance

if __name__ == "__main__":
    app.run()

handler = app  # Required for Vercel deployment
