.class public Lmiui/maml/NotifierManager$BroadcastNotifier;
.super Lmiui/maml/NotifierManager$BaseNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastNotifier"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 322
    new-instance v0, Lmiui/maml/NotifierManager$BroadcastNotifier$1;

    invoke-direct {v0, p0}, Lmiui/maml/NotifierManager$BroadcastNotifier$1;-><init>(Lmiui/maml/NotifierManager$BroadcastNotifier;)V

    iput-object v0, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 336
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 322
    new-instance v0, Lmiui/maml/NotifierManager$BroadcastNotifier$1;

    invoke-direct {v0, p0}, Lmiui/maml/NotifierManager$BroadcastNotifier$1;-><init>(Lmiui/maml/NotifierManager$BroadcastNotifier;)V

    iput-object v0, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 340
    iput-object p2, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mAction:Ljava/lang/String;

    .line 341
    return-void
.end method


# virtual methods
.method protected createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BroadcastNotifier;->getIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method protected onRegister()V
    .locals 4

    .prologue
    .line 345
    iget-object v1, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_0

    .line 346
    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BroadcastNotifier;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    .line 347
    :cond_0
    iget-object v1, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_2

    .line 348
    const-string v1, "NotifierManager"

    const-string v2, "onRegister: mIntentFilter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_1
    :goto_0
    return-void

    .line 351
    :cond_2
    iget-object v1, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 353
    iget-object v1, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lmiui/maml/NotifierManager$BroadcastNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onUnregister()V
    .locals 2

    .prologue
    .line 360
    :try_start_0
    iget-object v0, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    goto :goto_0
.end method
