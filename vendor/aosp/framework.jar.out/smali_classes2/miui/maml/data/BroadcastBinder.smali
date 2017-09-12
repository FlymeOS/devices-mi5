.class public Lmiui/maml/data/BroadcastBinder;
.super Lmiui/maml/data/VariableBinder;
.source "BroadcastBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/BroadcastBinder$Variable;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "BroadcastBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "BroadcastBinder"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 48
    new-instance v0, Lmiui/maml/data/BroadcastBinder$1;

    invoke-direct {v0, p0}, Lmiui/maml/data/BroadcastBinder$1;-><init>(Lmiui/maml/data/BroadcastBinder;)V

    iput-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    invoke-direct {p0, p1}, Lmiui/maml/data/BroadcastBinder;->load(Lorg/w3c/dom/Element;)V

    .line 46
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    const-string v0, "BroadcastBinder"

    const-string v1, "ContentProviderBinder node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    const-string v0, "action"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const-string v0, "BroadcastBinder"

    const-string v1, "no action in broadcast binder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no action in broadcast binder element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lmiui/maml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    .line 107
    invoke-virtual {p0, p1}, Lmiui/maml/data/BroadcastBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 108
    return-void
.end method

.method private updateVariables(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 120
    if-nez p1, :cond_1

    .line 166
    :cond_0
    return-void

    .line 124
    :cond_1
    const-string v7, "BroadcastBinder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateVariables: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v7, p0, Lmiui/maml/data/BroadcastBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/data/VariableBinder$Variable;

    .local v6, "var":Lmiui/maml/data/VariableBinder$Variable;
    move-object v2, v6

    .line 128
    check-cast v2, Lmiui/maml/data/BroadcastBinder$Variable;

    .line 130
    .local v2, "v":Lmiui/maml/data/BroadcastBinder$Variable;
    const/4 v3, 0x0

    .line 131
    .local v3, "valueStr":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 132
    .local v4, "value":D
    iget v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mType:I

    packed-switch v7, :pswitch_data_0

    .line 138
    iget v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mType:I

    packed-switch v7, :pswitch_data_1

    .line 152
    const-string v7, "BroadcastBinder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalide type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_1
    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/BroadcastBinder$Variable;->set(D)V

    .line 157
    const-string v7, "%f"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 162
    :goto_2
    const-string v7, "name:%s type:%s value:%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mName:Ljava/lang/String;

    aput-object v9, v8, v10

    iget-object v9, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mTypeStr:Ljava/lang/String;

    aput-object v9, v8, v11

    const/4 v9, 0x2

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "info":Ljava/lang/String;
    const-string v7, "BroadcastBinder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateVariables: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_0
    iget-object v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    if-nez v3, :cond_2

    iget-object v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mDefStringValue:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, v7}, Lmiui/maml/data/BroadcastBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object v7, v3

    goto :goto_3

    .line 140
    :pswitch_1
    iget-object v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v8, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    .line 141
    goto :goto_1

    .line 143
    :pswitch_2
    iget-object v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v8, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v7

    float-to-double v4, v7

    .line 144
    goto :goto_1

    .line 146
    :pswitch_3
    iget-object v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v8, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-int v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    int-to-double v4, v7

    .line 147
    goto :goto_1

    .line 149
    :pswitch_4
    iget-object v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v8, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-long v8, v8

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    long-to-double v4, v8

    .line 150
    goto :goto_1

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 138
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected addVariable(Lmiui/maml/data/BroadcastBinder$Variable;)V
    .locals 1
    .param p1, "v"    # Lmiui/maml/data/BroadcastBinder$Variable;

    .prologue
    .line 116
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    .line 175
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->unregister()V

    .line 176
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    .line 170
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->register()V

    .line 171
    return-void
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/BroadcastBinder$Variable;
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 112
    new-instance v0, Lmiui/maml/data/BroadcastBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/BroadcastBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .locals 1
    .param p1, "x0"    # Lorg/w3c/dom/Element;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lmiui/maml/data/BroadcastBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/BroadcastBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method protected onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-direct {p0, p2}, Lmiui/maml/data/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->onUpdateComplete()V

    .line 66
    return-void
.end method

.method protected onRegister()V
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lmiui/maml/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lmiui/maml/data/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->onUpdateComplete()V

    .line 72
    return-void
.end method

.method protected onUnregister()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/maml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    return-void
.end method

.method protected register()V
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lmiui/maml/data/BroadcastBinder;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->onRegister()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/BroadcastBinder;->mRegistered:Z

    goto :goto_0
.end method

.method protected unregister()V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lmiui/maml/data/BroadcastBinder;->mRegistered:Z

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->onUnregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/BroadcastBinder;->mRegistered:Z

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    goto :goto_1
.end method
