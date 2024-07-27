import json
import sys


if len(sys.argv) != 4:
    sys.exit("python3 parserenovate.py orgid repoid reponame")
    
orgid = int(sys.argv[1])
repoid = int(sys.argv[2])
reponame = sys.argv[3]

with open(file='logfile', mode='r') as f:
    lines = f.readlines()
    f.close()

for line in lines:
    obj = json.loads(line)
    if obj["msg"] == "packageFiles with updates":
        # this object holds dependency information
        project = obj['repository']
        print("project: "+project)
        managerlst = obj['config']
        for manager in managerlst:
            # interate over dependencies managed with this manager
            print("    - manager: "+manager)
            deplst = obj['config'][manager][0]['deps']
            for dep in deplst:
                # print(dep)
                # print dependency
                try:
                    if len(dep['updates']) > 0:
                       print("        - "+dep['depName']+" "+dep['currentVersion']+" "+ dep['updates'][0]['updateType'] + " " + dep['updates'][0]['newVersion'])
                    else:
                       print("        - "+dep['depName']+" "+dep['currentVersion'])
                except:
                    try:
                        print("        - "+dep['replaceString'])
                    except:
                        print("        - <unknown>")
