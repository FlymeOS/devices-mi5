.class Lcom/android/vendorsettings/eC;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic ry:Lcom/android/vendorsettings/eB;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/eB;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/vendorsettings/eC;->ry:Lcom/android/vendorsettings/eB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3

    .prologue
    .line 550
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 551
    const-string v1, "booleanResult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 553
    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/vendorsettings/eC;->ry:Lcom/android/vendorsettings/eB;

    iget-object v0, v0, Lcom/android/vendorsettings/eB;->rw:Lcom/android/vendorsettings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiMasterClear;->f(Lcom/android/vendorsettings/MiuiMasterClear;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0
.end method
