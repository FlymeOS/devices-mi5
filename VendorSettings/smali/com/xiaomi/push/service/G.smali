.class public Lcom/xiaomi/push/service/G;
.super Ljava/lang/Object;
.source "OnlineConfigHelper.java"


# direct methods
.method public static a(Lcom/xiaomi/push/service/F;Lcom/xiaomi/xmpush/thrift/ConfigListType;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-static {p1}, Lcom/xiaomi/push/service/G;->a(Lcom/xiaomi/xmpush/thrift/ConfigListType;)Ljava/lang/String;

    move-result-object v1

    .line 54
    sget-object v2, Lcom/xiaomi/push/service/H;->bdJ:[I

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ConfigListType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 62
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/xiaomi/push/service/F;->aXM:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 56
    :pswitch_1
    const/4 v0, 0x1

    .line 57
    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/xiaomi/xmpush/thrift/ConfigListType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oc_version_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ConfigListType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/xiaomi/push/service/F;Lcom/xiaomi/xmpush/thrift/ConfigListType;I)V
    .locals 2

    .prologue
    .line 66
    invoke-static {p1}, Lcom/xiaomi/push/service/G;->a(Lcom/xiaomi/xmpush/thrift/ConfigListType;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/xiaomi/push/service/F;->aXM:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    return-void
.end method

.method public static a(Lcom/xiaomi/push/service/F;Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;)V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->LR()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/G;->b(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/F;->M(Ljava/util/List;)V

    .line 49
    return-void
.end method

.method public static a(Lcom/xiaomi/push/service/F;Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;)V
    .locals 4

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->LT()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;

    .line 31
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->getVersion()I

    move-result v2

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->KA()Lcom/xiaomi/xmpush/thrift/ConfigListType;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/xiaomi/push/service/G;->a(Lcom/xiaomi/push/service/F;Lcom/xiaomi/xmpush/thrift/ConfigListType;)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->KA()Lcom/xiaomi/xmpush/thrift/ConfigListType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->getVersion()I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/xiaomi/push/service/G;->a(Lcom/xiaomi/push/service/F;Lcom/xiaomi/xmpush/thrift/ConfigListType;I)V

    .line 38
    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/G;->b(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/F;->L(Ljava/util/List;)V

    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method private static b(Ljava/util/List;Z)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/c/b;->e(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-object v2

    .line 75
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    .line 78
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KB()I

    move-result v5

    .line 79
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/ConfigType;->fv(I)Lcom/xiaomi/xmpush/thrift/ConfigType;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_1

    .line 83
    if-eqz p1, :cond_2

    iget-boolean v6, v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->clear:Z

    if-eqz v6, :cond_2

    .line 85
    new-instance v0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    :cond_2
    sget-object v6, Lcom/xiaomi/push/service/H;->bdK:[I

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ConfigType;->ordinal()I

    move-result v1

    aget v1, v6, v1

    packed-switch v1, :pswitch_data_0

    move-object v0, v2

    .line 101
    :goto_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    :pswitch_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 90
    goto :goto_2

    .line 92
    :pswitch_1
    new-instance v1, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KF()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 93
    goto :goto_2

    .line 95
    :pswitch_2
    new-instance v1, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KH()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 96
    goto :goto_2

    .line 98
    :pswitch_3
    new-instance v1, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KJ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 104
    goto/16 :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
