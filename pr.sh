echo "Opening a Pull Request"

curl -X 'POST' \
  'https://github.com/mdhack0316/gitops-argocd/pulls' \
  -H 'accept: application/json' \
  -H "authorization: $ARGOCD_TOKEN" \
  -H 'Content-Type: application/json' \
  -d '{
  "assignee": "mayank",
  "assignees": [
    "mayank"
  ],
  "base": "main",
  "body": "Updated deployment specification with a new image version.",
  "head": "main",
  "title": "Updated Solar System Image"
}'

echo "Success"
