from flask import Flask

app = Flask(__name__)


def create_app():
    """
    Create a Flask application using the app factory pattern.

    :param settings_override: Override settings
    :return: Flask app
    """
    app = Flask(__name__)

    @app.route('/')
    def index():
        """
        :return: Flask response
        """
        return '🚧 S3 Browser coming soon! 🚧'

    return app
