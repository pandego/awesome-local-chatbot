# First, let's launch the Docker Compose 🚀
echo "Launching the Docker Compose... 🐳"
if docker compose up -d --build; then
    echo "Docker Compose launched successfully! 🎉"
else
    echo "Oops! Something went wrong while launching Docker Compose. 😔"
    echo "Please check the logs for more details."
    exit 1
fi

# Now, let's personalize the app with a fancy favicon! ✨
echo "Personalizing the app with a fancy favicon... 🎉"
sleep 10  # Wait for the app to start before copying the favicon
if docker exec -it open-webui cp /app/backend/data/favicon.png /app/backend/static/favicon.png; then
    echo "Favicon personalized successfully! Enjoy the new look! 🌟"
else
    echo "Oops! Something went wrong while personalizing the favicon. 😔"
    echo "Please check the logs for more details."
    exit 1
fi

# Hooray! The app has been successfully personalized! 🎈🎊
echo "App personalization complete! Enjoy your customized chatbot! 🤖✨"
echo "You can now access the app at http://10.1.246.20:8001/ 🌐"
echo "Happy chatting! 🎉🎈🚀"
