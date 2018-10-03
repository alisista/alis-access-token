import getpass

from warrant.aws_srp import AWSSRP

POOL_ID = 'ap-northeast-1_HNT0fUj4J'
POOL_REGION = 'ap-northeast-1'
CLIENT_ID = '2gri5iuukve302i4ghclh6p5rg'
USERNAME = input('Enter your ALIS Username:')
PASSWORD = getpass.getpass('Enter your ALIS Password:')

aws = AWSSRP(username=USERNAME, password=PASSWORD, pool_id=POOL_ID, client_id=CLIENT_ID, pool_region=POOL_REGION)
id_token = aws.authenticate_user()['AuthenticationResult']['IdToken']
print(id_token)
