.class Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountSettings.java"


# instance fields
.field final synthetic DS:Lcom/android/vendorsettings/accounts/AccountSettings;

.field private DZ:Z


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->DS:Lcom/android/vendorsettings/accounts/AccountSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/accounts/AccountSettings;Lcom/android/vendorsettings/accounts/AccountSettings$1;)V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/vendorsettings/accounts/AccountSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 535
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    :cond_0
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->DS:Lcom/android/vendorsettings/accounts/AccountSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/accounts/AccountSettings;->b(Lcom/android/vendorsettings/accounts/AccountSettings;)V

    .line 540
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->DS:Lcom/android/vendorsettings/accounts/AccountSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/accounts/AccountSettings;->c(Lcom/android/vendorsettings/accounts/AccountSettings;)V

    .line 542
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->DS:Lcom/android/vendorsettings/accounts/AccountSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/accounts/AccountSettings;->aB()V

    .line 543
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->DS:Lcom/android/vendorsettings/accounts/AccountSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/accounts/AccountSettings;->d(Lcom/android/vendorsettings/accounts/AccountSettings;)V

    .line 546
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->DS:Lcom/android/vendorsettings/accounts/AccountSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 550
    :goto_0
    return-void

    .line 549
    :cond_1
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot handle received broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->DZ:Z

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 555
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->DZ:Z

    .line 560
    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->DZ:Z

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->DZ:Z

    .line 567
    :cond_0
    return-void
.end method
