rm kira.log
rm firefly.log
rm -r results
rm -r tmp
rm -r sectormappings
rm -r firefly_saves
rm -r ff_save
dos2unix list
dos2unix userSystem/ibp.kira
dos2unix jobs.yaml
kira --parallel=10 jobs.yaml
