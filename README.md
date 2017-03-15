MAX_ISOLATE_NUM =0时，就会直接在pod隔离后删除，这样会保持原有正常实例数。
increase_pod_num,每次检测失败则增加该数目的实例数，0表示维持原有实例数,负数表示缩减

next work:
需要将变量替换为configmap，以便实时生效。
