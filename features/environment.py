# pylint: disable=missing-docstring
from testsuite.config_reader import get_config


def before_all(context):
    config = get_config(context._config.defaults['ini_file'])
    context.api_url = config['api']['url']
    context.patient = config['api']['patient']

    context.auth = dict(config['auth'])
