SELECT token_id, scope
from api_tokens
order by SUBSTR(scope, 2, 1), issued, token_id
